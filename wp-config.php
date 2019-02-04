<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'foster2018' );

/** MySQL database username */
define( 'DB_USER', 'fmcgee1974' );

/** MySQL database password */
define( 'DB_PASSWORD', 'deadlift06' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '0pT5fR5Gs9ux.D**UqQ;/kW<CG,WTjOk8x+%:bM&+$}5E|@33C&R^ElTQ=h}p?G{' );
define( 'SECURE_AUTH_KEY',  'omLw<C-dHp|(;;HV~[<~ElpYz^P/(Y&n&17g{.nTth?U4oZ{aXb61D6-[l4h:Gyv' );
define( 'LOGGED_IN_KEY',    'M)$,$n3fJkb>}|K@AymvKA4KtriP78n23y0Kx$^;p&@O:7ZX7x1`ENhqYH7&7=ET' );
define( 'NONCE_KEY',        '>G}CB}^:c?P[VC$wCu{|hd9whP2/JSIv3]LOBOWw$wR_(nX%g*|~c&8bR>|]C-qN' );
define( 'AUTH_SALT',        'r/huRqRv}2%cL-f6TPS[%?!+MR_wA|liY+iD!anSSu%I)s`{O7UJ1aI/I#@G?N3`' );
define( 'SECURE_AUTH_SALT', 'TYD!F=Hg-]%RjMFi4gvd<:?9cpLd=2ID(!8G.X-:.-^d)|n9[G2:XN}*/@Me6v-B' );
define( 'LOGGED_IN_SALT',   '$``[b!zB&!E%pZpu(sfVG:QOH:k%}8u55<XsH><Uv=&zAm6Hr}qq}tP81-mg&a7W' );
define( 'NONCE_SALT',       'Fs:%!9tM?#,qKV0y?dr3<!/2>HREZ{`G:,Pcgh%,N_&G?,M4n4i*3fBPm!a5u,z|' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

define('FS_METHOD', 'direct');
