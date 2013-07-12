<!DOCTYPE html>
<html lang="fr">
    <head>
		<link rel="stylesheet" href="{$URL_ASSETS}css/common.css" />
		<link href="{$URL_ASSETS}css/bootstrap.css" rel="stylesheet">
		<script src="{$URL_ASSETS}js/bootstrap.js"></script>
		<meta name="template" content="{$THEME}">
        <meta charset="latin-1" />
		<title>{$TITLE} - {block name=title}Default Page Title{/block}</title>
	</head>
	<body>
		<div id="header"></div>
		<div id="menu">
			<ul class="black">
				<li class="black"><a class="black" href="{$URL}index.php/news/index">Accueil</a></li>
				<li class="black"><a class="black"href="{$URL}index.php/server/story">Histoire</a></li>
				<a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS}images/install.png"></a>
				<li class="black"><a class="black"href="{$URL}index.php/server/play">Nous rejoindre</a></li>
				<li class="black"><a class="black"href="{$URL}index.php/user/register">Inscription</a></li>
			</ul>
		</div>
		<br/><br/>
		<div id="content">
			<div id="status"> Statut du serveur : <span class="badge badge-success">ON</span>
				Comptes cr��s : <span class="badge">{$accounts}</span> Personnages cr��s : <span class="badge">{$characters}</span> Guildes cr��es : <span class="badge">{$guilds}</span>
			</div>
			<table>
				<tr>
					<td><a href="{$URL}index.php/user/register"><img src="{$URL_ASSETS}images/inscris.png"></a></td>
					<td><a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS}images/telecharge.png"></a></td>
				</tr>
			</table>
			<br/>
			<ul class="nav nav-list pull-right">
			{if isset($smarty.session.logged)}
    			<li class="nav-header">Mon compte ({$smarty.session.pseudo})</li>
    				<li><a href="{$URL}index.php/user/profil"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/user.png"> Mon profil</a></li>
					<li><a href="{$URL}index.php/user/tokens"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/star.png"> Mes points ({$smarty.session.tokens})</a></li>
					<li><a href="{$URL}index.php/shop/cat/1"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/cadeau.png"> Boutique</a></li>
					<li><a href="{$URL}index.php/user/vote"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/time.png"> Voter</a></li>
			{/if}
				<li class="nav-header">Accueil</li>
    				<li><a href="{$URL}index.php/news/index">Index</a></li>
    				<li><a href="{$URL}index.php/server/play">Nous rejoindre</a></li>
    				<li><a href="{$URL}index.php/server/staff">Equipe du serveur</a></li>
    				<li><a href="{$URL}index.php/server/cgu">R�glement</a></li>
    			<li class="nav-header">Interactif</li>
    				<li><a href="{$URL}index.php/server/ladder">Classement</a></li>
    				<li><a href="{$URL}index.php/shop/cat/1">Boutique</a></li>
    			<li class="nav-header">Communaut�</li>
    				<li><a href="{$BOARD_URL}">Forum</a></li>
    		</ul>
			
			{block name=body}{/block}
			
		</div>
		<div id="footer">
			<div class="login">
				{if !isset($smarty.session.logged)}
				    <form class="form-inline" action="{$URL}index.php/user/login" method="post">
    				<input type="text" name="username" class="input-medium" placeholder="Nom de compte"required/>
    				<input type="password" name="password" class="input-medium" placeholder="Mot de passe"required/>
    				<button type="submit" name="submit_login" class="btn btn-danger">Connexion</button>
    				</form>
				{else}
                <button class="btn btn-danger dropdown-toggle" onClick="window.location.href='{$URL}index.php/user/logout'">D�connexion ({$smarty.session.pseudo})</button>
				{/if}
			</div>
			<div class="search">
				<form class="form-inline" action="{$URL}index.php/encyclopedia/item" method="post">
					<input type="text" class="input-large" placeholder="Nom ou terme de recherche..." name="item" id="item" required/>
					<button type="submit" name="item_post" class="btn btn-danger">Rechercher</button>
			</div>
		</div>
	</body>