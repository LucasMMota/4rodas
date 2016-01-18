<!DOCTYPE html>
<html>
<head>
    <title><?php the_title() ?></title>
    <?php wp_head(); ?>
    <link rel="stylesheet" href="/wp-content/themes/4rodas/style.css"/>
</head>
<body>
<header>
    <div class="col-md-2 col-xs-12 col-sm-12">
            <img src="/wp-content/themes/4rodas/assets/img/logo.png" class="logo">
        <div id="botao-menu" class="botao-toggle col-xs-4 hidden-md hidden-lg">
            <div class="barra-toggle"></div>
            <div class="barra-toggle"></div>
            <div class="barra-toggle"></div>
        </div>
        <div class="close-menu hidden-lg hidden-md col-xs-4" id="close-menu">
            X
        </div>

    </div>
    <div class="col-md-8 container-menu-principal">
        <ul class="menu-principal">
        <div class="col-xs-12 hidden-md hidden-lg">
            <div class="pesquisar-xs">
                <div class="col-xs-1">
                    <i class="fa fa-search"></i>
                </div>
                <div class="col-xs-11">
                    <input>
                </div>
            </div>
        </div>
            <li><a class="menu-flag" href="#">Carros</a></li>
            <li><a class="menu-flag" href="#">Testes</a></li>
            <li><a class="menu-flag" href="#">Notícias</a></li>
            <li><a class="menu-flag" href="#">Auto-Serviço</a></li>
            <li><a class="menu-flag" href="#">Guia de Compras</a></li>
            <li><a class="menu-flag" href="#">Tabela Fipe</a></li>
            <li><a class="menu-flag" href="#">Assine</a></li>
        </ul>
    </div>
    <div class="col-md-2">
        <div class="pesquisar">
            <input placeholder="Pesquisar">
            <i class="fa fa-search"></i>
        </div>
    </div>
</header>
<div class="col-md-12 mais-acessados hidden-md hidden-xs hidden-sm">
    <div class="col-md-1">
        <div class="mais-acessados-label">
            + Acessados
        </div>
        <div class="mais-acessados-triangulo triangulo1"></div>
        <div class="mais-acessados-triangulo triangulo2"></div>
        <div class="mais-acessados-triangulo triangulo3"></div>
    </div>
    <div class="col-md-11">
        <nav>
            <ul class="mais-acessados-links">
                <li><a href="#">Salão do Automóvel</a></li>
                <li><a href="#">Renegade</a></li>
                <li><a href="#">Novo Sandero</a></li>
                <li><a href="#">Novo Fox</a></li>
                <li><a href="#">Novo Ka</a></li>
                <li><a href="#">HB 20</a></li>
                <li><a href="#">Duster</a></li>
                <li><a href="#">Golf</a></li>
                <li><a href="#">Corolla</a></li>
                <li><a href="#">Civic</a></li>
                <li><a href="#">IA-ZI</a></li>

            </ul>
        </nav>

    </div>
</div>


