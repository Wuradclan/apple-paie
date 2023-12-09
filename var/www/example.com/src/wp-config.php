<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'applipaie' );//appli paie

/** Database username */
define( 'DB_USER', 'example_db_user' );

/** Database password */
define( 'DB_PASSWORD', 'example_db_password' );

/** Database hostname */
define( 'DB_HOST', 'mysql' ); //localhost

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'I:~c-),>,U_B#p#IX:tS-<*fY,Vw0]n/P-ZrDjsc_x}x|l!.3i3[FHE81ib@_e[I' );
define( 'SECURE_AUTH_KEY',  'ZBeXZSy3AW;H<49J8%|5S@mLRBYOA^aVN:K@4OIMVg0j|tyW+=e_lKgJGxP}QKok' );
define( 'LOGGED_IN_KEY',    'VW<wp^Es4mT9[lX77eSKYmo|59*OTs5qPnI6zE6|m)5Kn?ZxgA&^cs4:Z&W/w%Ko' );
define( 'NONCE_KEY',        '/G%wmvu5Yh,.9TH^i0 apDKWBm*sg w%4>uQ$t?2xuw2FI:xu*k:O`;FYU6 ]%VA' );
define( 'AUTH_SALT',        'DA?FmttTduK0+qi9aO5J0{=%d+vuxAgT^-x8[w<OHB9XeUw0H=R8#SjB#}Hn~SIN' );
define( 'SECURE_AUTH_SALT', '&d0vtTg/BfTef6i7CC)jg=Ls|*@q?z#-s|yH3%t!CGUez)+ZD4;/#%Cfp=SoU_R~' );
define( 'LOGGED_IN_SALT',   'Uh2|^h7:E$=!O3c4@GkFOp>p^#et?UgBf~e?l4?g#?|,WInfT&O|/|lkww)=A5&&' );
define( 'NONCE_SALT',       ')_eS+25mz&X-wpcQUOzq7zqWopK7)4`f0@PR1-FAIz9(nEJn3$e`zT[m$o1/A2@Z' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
