<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'woocommerce-mondialrelay-test');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'CHlv}#R-rM<,=%0(i%{aA+*1aMYgoy-w{w&lSj/w_&VOg3DX#Mo.yxD7-RkET$k ');
define('SECURE_AUTH_KEY', 'F=IVYI/f0o5)HlwsGXKvtD?`zJcrIy)V/&ne 5qkr8U@gib|uJKF(:P6N#|^KPy~');
define('LOGGED_IN_KEY', 'C)jp9wDpP/nxbq:;H>wxW/A)/*^#mt#uwMcc2J)c,KWxHb%eTmYfln^Iq*)_wEEl');
define('NONCE_KEY', 'YC8;eo -rH%Iu<NeciX9}XO}N=[lF`?RH1l(p[X@]]KPqZUe0Slyg@Q%$,#/O$[+');
define('AUTH_SALT', '`rmIWorQJ9eoC#W=KF^4%<EW!]8 LQ,:,$Pf{NQd8u 2gE|4%=[sQT*KqB1XNu@o');
define('SECURE_AUTH_SALT', 'X&)k&|J A%c!kqP0(!j0JE}tM90J^yF^/<=d$A-)_9^U,Cj{OuyGW,JQ<pi}!@D#');
define('LOGGED_IN_SALT', 'g=uLtf*`6SN&|;^hHe+SUX6byEP#aCK#|Egijf=kTCUU[w!EZb@reF~:P8.WQMJ<');
define('NONCE_SALT', '=cElsS%Pau9+}1yaVJ9.XxiTL<,9JP0gxiDCq_^ 4,g<b2Sg[e)14soyQXxJ3E[Q');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wpwc_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if (!defined('ABSPATH')) {
    define('ABSPATH', dirname(__FILE__) . '/');
}

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
