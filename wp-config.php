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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'movies' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         'gz6@T$!OaNg+SQKKExn(:P}f5 stGNMAA1]b4,GBN!$ETKBg#,{])9li$)_OTO.8' );
define( 'SECURE_AUTH_KEY',  'vtqOH%#(^c-Q5K9q(eJ1WG`G[n-r&UT#WZ]S3C8<}hk$MBE}=RT*>/IEsoO+Ue)#' );
define( 'LOGGED_IN_KEY',    '+(4zvi`BJZ./q+;.=|sm6OBw_6Tk/lG-YsH>wWj-Ibz`L $400IvA[6|@Q Mqa<o' );
define( 'NONCE_KEY',        '#.uew*eJiU@Tdtn}@i&w2|6&6Ks?^mxko )7g*Sxp_}2/#5.[|p<)#odI(PHzYrs' );
define( 'AUTH_SALT',        '?&Mt+9_voU%U**b]iRUANc,0~Vb.JmS4cW-i.w[taLeJ_yV9Wz=mt}-rV.^Mdw#$' );
define( 'SECURE_AUTH_SALT', ':%7Ja :C`;DvIgjr-^u0ce@gZq_I{C}J,); ,Uz@-P/5!:)C?b;dIJJ}LhmRkRu=' );
define( 'LOGGED_IN_SALT',   'x_-aY>nAl1K6zTr>/h+[}BRq&dB_cC0zmptmHe5x z>Swl>2{T;$2LyM2!TCG4N>' );
define( 'NONCE_SALT',       '$~P4< Tm|wZ9z}%]%<%exT4N| *=eU9G0=!Nly7#T7-iO%}wg^=._&gQ{SH4,xof' );

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
