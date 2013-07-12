{extends file="$THEME/layout.tpl"}
{block name=title}Jouer !{/block}
{block name=body}
<table>
	<tr>
		<div class="caption">Rejoindre le serveur</div>
		<td class="text">
			<center>Vous souhaitez rejoindre la communaut� de <b>{$TITLE}</b> et revivre l'aventure des anciens serveurs officiel de <b>Ankama</b> ? Vous trouverez ici toutes les informations qu'il vous faut pour nous rejoindre m�me si vous n'avez pas encore le jeu.<br><br>
				Si vous n'�tes pas satisfaits de nos services nous vous invitons � vous rendre sur les serveurs officiels, malgr� la <b>version 2.0</b>.<br><br>
				<b><u>Etape n�1: Installation du client.</u></b><br><br>
				T�l�chargez la version 1.29 de Dofus (seulement si vous n'avez pas d�j� le client dofus 1.29) <b><font color="red">est obligatoire</font></b> pour pouvoir acc�der au serveur en toute tranquillit�.<br><br>
				<a href="{$DOFUS_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
				Apr�s avoir t�l�charg� le client ci-dessus, veuillez le lancer et suivre les instructions pour mener � bien votre installation.<br><br>
				<b><u>Etape n�2: Lancement du jeu (Installateur)</u></b><br><br>
				<a href="{$LAUNCHER_URL}"><img src="{$URL_ASSETS_GLOBAL}devtool/download.png" border="0"></a><br><br>
				Lancez l'ex�cutable installateur.exe. Celui-ci vous permettra d'effectuer les derni�res mises � jour.
			</center>
		</td>
	</tr>
</table>
<br/>{/block}