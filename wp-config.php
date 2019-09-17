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
define( 'DB_NAME', 'web-portal-master' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');

define('ALLOW_UNFILTERED_UPLOADS', true);


/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'o>QMeuwVF:GALt./s >s9ih!@0+J]2TP0X.1z^C&%@Q3]G]-N71g+Z=naTAOj8r=' );
define( 'SECURE_AUTH_KEY',  '3G0D]c/)^4qyZU%5=<+FVM`M7[pmZRp{%0rK4-^S`q(YcpW:E^Dz.Uw?nk|Ke*qV' );
define( 'LOGGED_IN_KEY',    'Al<@!$N_WYmyK>E Yk8Y&l5SrdyDZ{9e3`9YaN{arI=wi25OdI6q v*1^g2bso.|' );
define( 'NONCE_KEY',        'pUYpW@K>_|qGW]z179#TjGro#yJrGq2PP-B3d!Ya&Q%u*<F?B3U3]W{#F]x*>-QR' );
define( 'AUTH_SALT',        '35Syo<8h21+J}~ 4z;W@{|S^m8wE%w3B(A>b,h%ROcx(dU27::>}kHV>H$I^h?L`' );
define( 'SECURE_AUTH_SALT', 'SXwnEn+#%)Pq+1eNWp)AB/.IHT);@S5!]7q8jXxX:S9X~?pc6f:D0y9p]YI;-&{B' );
define( 'LOGGED_IN_SALT',   'Ksu16ix#[>5W|v#@4:8wF[[.$&{9e|KX#oC$XR5NT>A{-Sqbyb2Yj&cE/RDiSid3' );
define( 'NONCE_SALT',       'B)o AQY9J[?gui:05i$fxWk7azD%qnK7Ox*eRr*G^0}P2wjz<pF%R4*&&t6>Cj0W' );

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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
