<?php
if(!defined('ABSPATH')) { die('You are not allowed to call this page directly.'); }

class PrliLink {
  public $table_name;

  public function __construct() {
    global $wpdb;
    $this->table_name = "{$wpdb->prefix}prli_links";
  }

  public static function get_count() {
    global $wpdb, $prli_link;
    $q = "SELECT COUNT(*) FROM {$prli_link->table_name}";
    return $wpdb->get_var($q);
  }

  public static function get_first_date() {
    global $wpdb, $prli_link;
    $q = "SELECT min(created_at) FROM {$prli_link->table_name}";
    return $wpdb->get_var($q);
  }

    public function create( $values ) {
      global $wpdb, $prli_link_meta;

      $now = date('Y-m-d H:i:s');

      if($values['redirect_type'] == 'pixel') {
        $values['name'] = (!empty($values['name'])?$values['name']:$values['slug']);
      }
      else {
        $values['name'] = (!empty($values['name'])?$values['name']:PrliUtils::get_page_title($values['url'],$values['slug']));
      }

      // We no longer handle this: 'param_struct,'.
      $query_str = "
        INSERT INTO {$this->table_name} (
          url,
          slug,
          name,
          param_forwarding,
          redirect_type,
          description,
          track_me,
          nofollow,
          group_id,
          created_at,
          updated_at
        )
        VALUES (%s,%s,%s,%s,%s,%s,%d,%d,%d,%s,%s)
      ";

      $query = $wpdb->prepare(
        $query_str,
        $values['url'],
        $values['slug'],
        $values['name'],
        (isset($values['param_forwarding']) && !empty($values['param_forwarding']))?1:0,
        // We no longer handle this: $values['param_struct'],
        $values['redirect_type'],
        $values['description'],
        (isset($values['track_me']) && !empty($values['track_me']))?1:0,
        (isset($values['nofollow']) && !empty($values['nofollow']))?1:0,
        (isset($values['group_id'])?(int)$values['group_id']:'NULL'),
        $now, $now
      );

      $query_results = $wpdb->query($query);

      $link_id = ($query_results ? $wpdb->insert_id : false);

      //If JS or MetaRefresh are the default types we need to set this to 0 or the redirects will fail
      if($link_id) {
        $prli_link_meta->update_link_meta($link_id, 'delay', 0);
      }

      do_action('prli-create-link', $link_id, $values);

      return $link_id;
    }

    public function update( $id, $values ) {
      global $wpdb;

      $now = date('Y-m-d H:i:s');

      if($values['redirect_type'] == 'pixel') {
        $values['name'] = (!empty($values['name'])?$values['name']:$values['slug']);
      }
      else {
        $values['name'] = (!empty($values['name'])?$values['name']:PrliUtils::get_page_title($values['url'],$values['slug']));
      }

      // 'param_struct=%s, ' .
      $query_str = "
        UPDATE {$this->table_name}
           SET url=%s,
               slug=%s,
               name=%s,
               param_forwarding=%s,
               redirect_type=%s,
               description=%s,
               track_me=%d,
               nofollow=%d,
               group_id=%d,
               updated_at=%s
         WHERE id=%d
      ";

      // isset($values['param_struct'])?$values['param_struct']:'',
      $query = $wpdb->prepare(
        $query_str,
        isset($values['url'])?$values['url']:'',
        isset($values['slug'])?$values['slug']:'',
        isset($values['name'])?$values['name']:'',
        (isset($values['param_forwarding']) && !empty($values['param_forwarding']))?1:0,
        isset($values['redirect_type'])?$values['redirect_type']:'',
        isset($values['description'])?$values['description']:'',
        (isset($values['track_me']) && !empty($values['track_me']))?1:0,
        (isset($values['nofollow']) && !empty($values['nofollow']))?1:0,
        (isset($values['group_id'])?(int)$values['group_id']:'NULL'),
        $now, $id
      );

      $query_results = $wpdb->query($query);

      return $query_results;
    }

    public function bulk_update($ids, $values) {
      if(!empty($ids) && is_array($values) && !empty($values)) {
        global $wpdb;

        $now    = date('Y-m-d H:i:s');
        $sets   = array();
        $query  = $wpdb->prepare("UPDATE {$this->table_name} SET updated_at=%s ", $now);

        $link_columns = array(
                          'name',
                          'description',
                          'url',
                          'slug',
                          'nofollow',
                          'track_me',
                          'param_forwarding',
                          'param_struct',
                          'redirect_type',
                          'group_id'
                        );

        foreach($values as $lnkkey => $lnkval) {
          // make sure this is an option contained in the links table
          if(in_array($lnkkey, $link_columns)) {
            // check to see if this is a checkbox
            if(in_array(strtolower($lnkval), array('on','off'))) {
              $sets[] = $wpdb->prepare("{$lnkkey}=%d", (strtolower($lnkval)=='on'));
            }
            else {
              $sets[] = $wpdb->prepare("{$lnkkey}=%s", $lnkval);
            }
          }
        }

        if(!empty($sets)) {
          $query .= ', ';
          $query .= implode(',', $sets);
        }

        if(preg_match('/,/',$ids)) {
          $query .= " WHERE id IN ({$ids})";
        }
        else {
          $query .= $wpdb->prepare(" WHERE id=%d", $ids);
        }

        $query_results = $wpdb->query($query);

        return $query_results;
      }

      return false;
    }

    public function update_group($id, $value, $group_id) {
      global $wpdb;

      $query = 'UPDATE ' . $this->table_name .
                  ' SET group_id=' . (isset($value)?$group_id:'NULL') .
                  ' WHERE id='.$id;
      $query_results = $wpdb->query($query);

      return $query_results;
    }

    public function destroy($id) {
      //require_once(PRLI_MODELS_PATH.'/models.inc.php');
      global $wpdb, $prli_click, $prli_link_meta;

      do_action('prli_delete_link', $id);
      $metas = $wpdb->prepare("DELETE FROM {$prli_link_meta->table_name} WHERE link_id=%d",$id);
      $reset = $wpdb->prepare("DELETE FROM {$prli_click->table_name} WHERE link_id=%d",$id);
      $destroy = $wpdb->prepare("DELETE FROM {$this->table_name} WHERE id=%d",$id);

      $wpdb->query($metas);
      $wpdb->query($reset);

      return $wpdb->query($destroy);
    }

    public function reset($id) {
      //require_once(PRLI_MODELS_PATH.'/models.inc.php');
      global $wpdb, $prli_click, $prli_link_meta;

      $prli_link_meta->delete_link_meta($id, 'static-clicks');
      $prli_link_meta->delete_link_meta($id, 'static-uniques');

      $reset = $wpdb->prepare("DELETE FROM {$prli_click->table_name} WHERE link_id=%d", $id);

      return $wpdb->query($reset);
    }

    public function getOneFromSlug( $slug, $return_type = OBJECT, $include_stats = false ) {
      global $wpdb, $prli_click, $prli_options, $prli_link_meta;

      static $cached;

      if(!isset($cached)) { $cached = array(); }

      if(!$include_stats && isset($cached[$slug])) {
        return $cached[$slug];
      }
      elseif($include_stats && isset($cached[$slug]['stats'])) {
        return $cached[$slug]['stats'];
      }

      if($include_stats) {
        $query = 'SELECT li.*, ';

        if($prli_options->extended_tracking != 'count') {
          $query .= '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                        'WHERE cl.link_id = li.id' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as clicks, ' .
                    '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                        'WHERE cl.link_id = li.id ' .
                        'AND cl.first_click <> 0' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as uniques ';
        }
        else {
          $query .= '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                        'WHERE lm.meta_key="static-clicks" AND lm.link_id=li.id LIMIT 1) as clicks, ' .
                    '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                        'WHERE lm.meta_key="static-uniques" AND lm.link_id=li.id LIMIT 1) as uniques ';
        }

        $query .= "FROM {$this->table_name} li " .
                  'WHERE slug=%s';
      }
      else {
        $query = "SELECT * FROM {$this->table_name} WHERE slug=%s";
      }

      $query  = $wpdb->prepare($query, $slug);
      $link   = $wpdb->get_row($query, $return_type);

      //get_row returns a null if not found - we don't want nulls
      if(!$link) { $link = false; }

      if($include_stats and $link and $prli_options->extended_tracking == 'count') {
        $link->clicks  = $prli_link_meta->get_link_meta($link->id,'static-clicks',true);
        $link->uniques = $prli_link_meta->get_link_meta($link->id,'static-uniques',true);
      }

      //Cache this to prevent multiple queries
      if(!$include_stats) {
        $cached[$slug] = $link;
      }
      else {
        $cached[$slug]['stats'] = $link;
      }

      return $link;
    }

    public function getOne( $id, $return_type = OBJECT, $include_stats = false ) {
      global $wpdb, $prli_click, $prli_link_meta, $prli_options;

      if(!isset($id) or empty($id)) { return false; }

      static $cached;

      if(!isset($cached)) { $cached = array(); }

      if(!$include_stats && isset($cached[$id])) {
        return $cached[$id];
      }

      if($include_stats) {
        $query = 'SELECT li.*, ';

        if($prli_options->extended_tracking != 'count') {
          $query .= '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                        'WHERE cl.link_id = li.id' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as clicks, ' .
                    '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                        'WHERE cl.link_id = li.id ' .
                        'AND cl.first_click <> 0' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as uniques ';
        }
        else {
          $query .= '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                        'WHERE lm.meta_key="static-clicks" AND lm.link_id=li.id LIMIT 1) as clicks, ' .
                    '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                        'WHERE lm.meta_key="static-uniques" AND lm.link_id=li.id LIMIT 1) as uniques ';
        }

        $query .= 'FROM ' . $this->table_name . ' li ' .
                  'WHERE id=%d';
      }
      else {
        $query = "SELECT * FROM {$this->table_name} WHERE id=%d";
      }

      $query  = $wpdb->prepare($query, $id);
      $link   = $wpdb->get_row($query, $return_type);

      if($include_stats and $link and $prli_options->extended_tracking == 'count') {
        $link->clicks  = $prli_link_meta->get_link_meta($link->id,'static-clicks',true);
        $link->uniques = $prli_link_meta->get_link_meta($link->id,'static-uniques',true);
      }

      //Cache this to prevent multiple queries
      if(!$include_stats) {
        $cached[$id] = $link;
      }

      return $link;
    }

    public function find_first_target_url($target_url)
    {
      global $wpdb;
      $query_str = "SELECT id FROM {$this->table_name} WHERE url=%s LIMIT 1";
      $query = $wpdb->prepare($query_str,$target_url);
      return $wpdb->get_var($query);
    }

    public function get_or_create_pretty_link_for_target_url( $target_url, $group=0 )
    {
      global $wpdb;
      $query_str = "SELECT * FROM {$this->table_name} WHERE url=%s LIMIT 1";
      $query = $wpdb->prepare($query_str,$target_url);
      $pretty_link = $wpdb->get_row($query);

      if(empty($pretty_link) or !$pretty_link)
      {
        $pl_insert_id = prli_create_pretty_link( $target_url, '', '', '', $group );
        $pretty_link = $this->getOne($pl_insert_id);
      }

      if( !isset($pretty_link) or empty($pretty_link) or !$pretty_link )
        return false;
      else
        return $pretty_link;
    }

    public function is_pretty_link($url, $check_domain=true)
    {
      global $prli_blogurl;

      if( !$check_domain or preg_match( '#^' . preg_quote( $prli_blogurl ) . '#', $url ) )
      {
        $uri = preg_replace('#' . preg_quote($prli_blogurl) . '#', '', $url);

        // Resolve WP installs in sub-directories
        preg_match('#^(https?://.*?)(/.*)$#', $prli_blogurl, $subdir);

        $struct = PrliUtils::get_permalink_pre_slug_regex();

        $subdir_str = (isset($subdir[2])?$subdir[2]:'');

        $match_str = '#^'.$subdir_str.'('.$struct.')([^\?]*?)([\?].*?)?$#';

        if(preg_match($match_str, $uri, $match_val))
        {
          // Match longest slug -- this is the most common
          $params = (isset($match_val[3])?$match_val[3]:'');
          if( $pretty_link_found = $this->is_pretty_link_slug( $match_val[2] ) )
            return compact('pretty_link_found','pretty_link_params');

          // Trim down the matched link
          $matched_link = preg_replace('#/[^/]*?$#','',$match_val[2],1);

          // cycle through the links (maximum depth 25 folders so we don't get out
          // of control -- that should be enough eh?) and trim the link down each time
          for( $i=0; ($i < 25) and
                     $matched_link and
                     !empty($matched_link) and
                     $matched_link != $match_val[2]; $i++ )
          {
            $new_match_str ="#^{$subdir_str}({$struct})({$matched_link})(.*?)?$#";

            $params = (isset($match_val[3])?$match_val:'');
            if( $pretty_link_found = $this->is_pretty_link_slug( $match_val[2] ) )
              return compact('pretty_link_found','pretty_link_params');

            // Trim down the matched link and try again
            $matched_link = preg_replace('#/[^/]*$#','',$match_val[2],1);
          }
        }
      }

      return false;
    }

    public function is_pretty_link_slug($slug)
    {
      return apply_filters('prli-check-if-slug', $this->getOneFromSlug( rawurldecode($slug) ), rawurldecode($slug));
    }

    public function get_link_min( $id, $return_type = OBJECT ) {
      global $wpdb, $prli_link_meta;
      $query_str = "SELECT * FROM {$this->table_name} WHERE id=%d";
      $query = $wpdb->prepare($query_str, $id);
      $res = $wpdb->get_row($query, $return_type);

      //Load in some meta data too
      if($res && $return_type == ARRAY_A) {
        $res['delay'] = (int)$prli_link_meta->get_link_meta($id, 'delay', true);
        $res['google_tracking'] = (int)$prli_link_meta->get_link_meta($id, 'google_tracking', true);
      }

      return $res;
    }

    public function getAll($where = '', $order_by = '', $return_type = OBJECT, $include_stats = false)
    {
      global $wpdb, $prli_click, $prli_group, $prli_link_meta, $prli_options, $prli_utils;

      if($include_stats)
      {
        $query = 'SELECT li.*, ';
        if($prli_options->extended_tracking != 'count')
        {
          $query .= '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                        'WHERE cl.link_id = li.id' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as clicks, ' .
                    '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                        'WHERE cl.link_id = li.id ' .
                        'AND cl.first_click <> 0' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as uniques, ';
        }
        else
        {
          $query .= '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                        'WHERE lm.meta_key="static-clicks" AND lm.link_id=li.id LIMIT 1) as clicks, ' .
                    '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                        'WHERE lm.meta_key="static-uniques" AND lm.link_id=li.id LIMIT 1) as uniques, ';
        }
        $query .= 'gr.name as group_name ' .
                 'FROM '. $this->table_name . ' li ' .
                 'LEFT OUTER JOIN ' . $prli_group->table_name . ' gr ON li.group_id=gr.id' .
                 $prli_utils->prepend_and_or_where(' WHERE', $where) . $order_by;
      }
      else
      {
        $query = "SELECT li.*, gr.name as group_name FROM {$this->table_name} li " .
                 'LEFT OUTER JOIN ' . $prli_group->table_name . ' gr ON li.group_id=gr.id' .
                 $prli_utils->prepend_and_or_where(' WHERE', $where) . $order_by;
      }

      return $wpdb->get_results($query, $return_type);
    }

    // Pagination Methods
    public function getRecordCount($where="")
    {
      global $wpdb, $prli_utils;
      $query = 'SELECT COUNT(*) FROM ' . $this->table_name . ' li' . $prli_utils->prepend_and_or_where(' WHERE', $where);
      return $wpdb->get_var($query);
    }

    public function getPageCount($p_size, $where="")
    {
      return ceil((int)$this->getRecordCount($where) / (int)$p_size);
    }

    public function getPage($current_p,$p_size, $where = "", $order_by = '', $return_type = OBJECT)
    {
      global $wpdb, $prli_click, $prli_utils, $prli_group, $prli_link_meta, $prli_options;
      $end_index = $current_p * $p_size;
      $start_index = $end_index - $p_size;
      $query = 'SELECT li.*, ';
      if($prli_options->extended_tracking != 'count')
      {
        $query .= '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                      'WHERE cl.link_id = li.id' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as clicks, ' .
                  '(SELECT COUNT(*) FROM ' . $prli_click->table_name . ' cl ' .
                      'WHERE cl.link_id = li.id ' .
                      'AND cl.first_click <> 0' . $prli_click->get_exclude_where_clause( ' AND' ) . ') as uniques, ';
      }
      else
      {
        $query .= '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                      'WHERE lm.meta_key="static-clicks" AND lm.link_id=li.id LIMIT 1) as clicks, ' .
                  '(SELECT lm.meta_value FROM ' . $prli_link_meta->table_name . ' lm ' .
                      'WHERE lm.meta_key="static-uniques" AND lm.link_id=li.id LIMIT 1) as uniques, ';
      }
      $query .= 'gr.name as group_name ' .
               'FROM ' . $this->table_name . ' li ' .
               'LEFT OUTER JOIN ' . $prli_group->table_name . ' gr ON li.group_id=gr.id' .
               $prli_utils->prepend_and_or_where(' WHERE', $where) . $order_by . ' ' .
               'LIMIT ' . $start_index . ',' . $p_size . ';';
      $results = $wpdb->get_results($query, $return_type);
      return $results;
    }

    public function generateValidSlug($num_chars = 4) {
      global $wpdb, $plp_update, $plp_options;
      $slug_prefix = '';

      //Maybe use a different number of characters?
      if($plp_update->is_installed()) {
        if(!empty($plp_options->base_slug_prefix)) {
          $slug_prefix = $plp_options->base_slug_prefix . '/';
        }

        $num_chars = $plp_options->num_slug_chars;
      }

      $slug = $slug_prefix . PrliUtils::gen_random_string($num_chars);

      $query = "SELECT slug FROM {$this->table_name}";
      $slugs = $wpdb->get_col($query,0);

      // It is highly unlikely that we'll ever see 2 identical random slugs
      // but just in case, here's some code to prevent collisions
      while(in_array($slug, $slugs) or !PrliUtils::slugIsAvailable($slug))
        $slug = $slug_prefix . PrliUtils::gen_random_string($num_chars);

      return apply_filters('prli-auto-generated-slug', $slug, $slugs, $num_chars);
    }

    public function get_pretty_link_url($slug)
    {
      global $prli_blogurl;

      $link = $this->getOneFromSlug($slug);

      if( ( !isset($link->param_forwarding) || empty($link->param_forwarding) || $link->param_forwarding=='off' ) &&
          ( isset($link->redirect_type) && $link->redirect_type == 'pixel' ) ) {
        return '&lt;img src="'.$prli_blogurl.PrliUtils::get_permalink_pre_slug_uri().$link->slug.'" width="1" height="1" style="display: none" &gt;';
      }
      else {
        return $prli_blogurl . PrliUtils::get_permalink_pre_slug_uri() . $link->slug;
      }
    }

    public function validate( $values )
    {
      global $wpdb, $prli_utils, $prli_blogurl;

      $errors = array();
      if( empty($values['url']) && $values['redirect_type'] != 'pixel' ) {
        $errors[] = __("Target URL can't be blank", 'pretty-link');
      }

      if( $values['slug'] == null || $values['slug'] == '' ) {
        $errors[] = __("Pretty Link can't be blank", 'pretty-link');
      }

      if( $values['url'] == $prli_blogurl.PrliUtils::get_permalink_pre_slug_uri().$values['slug'] ) {
        $errors[] = __("Target URL must be different than the Pretty Link", 'pretty-link');
      }

      if( !empty($values['url']) && !PrliUtils::is_url($values['url']) ) {
        $errors[] = __("Link URL must be a correctly formatted url", 'pretty-link');
      }

      if( preg_match('/^[\?\&\#]+$/', $values['slug'] ) ) {
        $errors[] = __("Pretty Link slugs must not contain question marks, ampersands or number signs.", 'pretty-link');
      }

      if( preg_match('#/$#', $values['slug']) ) {
        $errors[] = __("Pretty Link slugs must not end with a slash (\"/\")", 'pretty-link');
      }

      $id = isset($values['id'])?$values['id']:null;
      if( !$prli_utils->slugIsAvailable($values['slug'],$id) ) {
        $errors[] = __("This Pretty Link Slug is already taken. Check to make sure it isn't being used by another pretty link, post, page, category or tag slug. If none of these are true then check to see that this slug isn't the name of a file in the root folder of your wordpress install.", 'pretty-link');
      }

      return $errors;
    }

    public function get_link_slug($url) {
      global $prli_blogurl;
      $ugh = preg_quote($prli_blogurl.PrliUtils::get_permalink_pre_slug_uri(), '!');
      $mod = preg_replace("!^{$ugh}!", '', $url);
      return "\"{$mod}\"";
    }

    public function get_target_to_pretty_urls($urls=array(),$create_pretty_links=false) {
      global $wpdb, $prli_blogurl;

      if(empty($urls)) { return false; }

      $decoded_urls = array_map( create_function( '$url', 'return html_entity_decode(rawurldecode($url));' ), $urls );

      // Filter out urls that are already Pretty Links
      $where = "IN (" . implode( ',', array_map( array($this, 'get_link_slug'), $decoded_urls ) ) . ")";

      $query = "
        SELECT CONCAT(%s, li.slug) AS pretty_url
          FROM {$this->table_name} AS li
         WHERE li.slug {$where}
      ";
      $query = $wpdb->prepare($query, $prli_blogurl.PrliUtils::get_permalink_pre_slug_uri());
      $plinks = $wpdb->get_col($query);

      $decoded_urls = array_diff($decoded_urls, $plinks);

      if(empty($decoded_urls)) { return false; }

      $where = "IN (" . implode( ',', array_map( create_function( '$url', 'return "\"{$url}\"";' ), $decoded_urls ) ) . ")";

      $query = "
        SELECT li.url AS target_url,
               CONCAT(%s, li.slug) AS pretty_url
          FROM {$this->table_name} AS li
         WHERE li.url {$where}
      ";
      $query = $wpdb->prepare($query, $prli_blogurl.PrliUtils::get_permalink_pre_slug_uri());

      $results = (array)$wpdb->get_results($query);

      $prli_lookup = array();
      foreach($results as $url_hash) {
        if(isset($prli_lookup[$url_hash->target_url])) {
          $prli_lookup[$url_hash->target_url][] = $url_hash->pretty_url;
        }
        else {
          $prli_lookup[$url_hash->target_url] = array($url_hash->pretty_url);
        }
      }

      if($create_pretty_links) {
        foreach($decoded_urls as $url) {
          if(!isset($prli_lookup[$url])) {
            if( $id = prli_create_pretty_link( $url ) ) {
              $prli_lookup[$url] = array(prli_get_pretty_link_url($id));
            }
          }
        }
      }

      return $prli_lookup;
    }

    public static function bookmarklet_link() {
      global $prli_options;
      $site_url = site_url();
      return "javascript:location.href='{$site_url}/index.php?action=prli_bookmarklet&k={$prli_options->bookmarklet_auth}&target_url='+escape(location.href);";
    }
}

