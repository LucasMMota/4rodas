<?php
/** 
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'quatrorodas');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '7hI1<l~r@TGGpT3K`5M4Oy&!{8aZf52JUWkpkG`lnb|V8[bP[N3%bgBlA%z,cz;^');
define('SECURE_AUTH_KEY',  '~wMVydx[&kANm8,K,v=U;gYx8u:~Oro#AJBTEYp~SnO;}=- uNbvG<pzz,yga&Bl');
define('LOGGED_IN_KEY',    'w R=YHU{Z0WQLJoj!wL)b[) ofA<K9MVx)@F<k%48WVv1eWO1~AoQC9+9,!2L+g8');
define('NONCE_KEY',        'GhVYvzMVax^x5hO2KLDoH>bb;d3@lS7nK)ta!;e-,&nR)dx=WZ,{3jq{m%UL.`t]');
define('AUTH_SALT',        'od#`H]KKRPw#jsynueh`*l*5H@Gblzx2fIwUR|NuMYL-hy=@9(k7e16h*m#dd&GI');
define('SECURE_AUTH_SALT', '1*:u:S ;wCx*N3_7PjB4!LqU(6[M6R7-f#7iDPu@F2]UR-UXxHgW^bzvOz&YaKIf');
define('LOGGED_IN_SALT',   ';AmBmMLkbz}jA^ @mbb9VXlRi*SN&70Ula!5 cT&ww2jnV$7:%i9KEJ@BZ@OIgZ8');
define('NONCE_SALT',       'Y>cir_WesO)BTd 8j5%$G_,M0[Z>Y;#($}R#C!(=vtUSpFe|sB/:B!]eNml4]/P}');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';


/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');
