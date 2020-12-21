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
define( 'DB_NAME', 'wp_db' );

/** MySQL database username */
define( 'DB_USER', 'yassine' );

/** MySQL database password */
define( 'DB_PASSWORD', 'yassine' );

/** MySQL hostname */
define( 'DB_HOST', '10.99.99.99' );

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
define( 'AUTH_KEY',         'RbtA*~,({2zrA!Q[nrSyhn3[Z@TR];G.je]y1+VhMov<&B>{5_d3jVvUmt;jg?F ' );
define( 'SECURE_AUTH_KEY',  '}lZ/XUD`gR)qlC>xq$#: ocTnY~?PU~CVzDS<Tof1NPT$}Q#,G1>i^KQyt:{fH}f' );
define( 'LOGGED_IN_KEY',    'l/WshlmED8;U6XG$V)-efV>N=t<b@~j1o)|+$OIkk[<Wp4p3ASiwXm>B p3QqV<;' );
define( 'NONCE_KEY',        ',D6}L-VoZ.<N@_ba[k`w#IOcCy!LO->3-O>UX>0ZnjD);H<Qgv0:qG-l)&OGHd&q' );
define( 'AUTH_SALT',        'u1S8>9^0fW?O:vP`=@!$[ gz8gxk_(1HS![9kY7G;-X/Fu $*-T9r~w`&y-Nzu]4' );
define( 'SECURE_AUTH_SALT', 'ImyyvjKqv.QgpO,.``_S9;^CapYvfsbjg6N?9])4/fb%cD^wG(p_jxc(AvGpustR' );
define( 'LOGGED_IN_SALT',   'rEtUTUpcMajr1*t|z3:%Tra;{oyX{}&[P5_q=UA/ExlYsh5e9yTPF{t&1)R,5k1)' );
define( 'NONCE_SALT',       'A9f+s0V%u)#jqzr J]s}uPf(UqyVe#837c~$BhrB1}1.GNM<B(`s7)+Y _+_:5@(' );

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