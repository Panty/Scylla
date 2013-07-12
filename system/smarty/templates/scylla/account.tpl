{extends file="$THEME/layout.tpl"}
{block name=title}Profil{/block}<br/>
{block name=body}
{if isset($badpassword)}
<table>
	<tr>
		<div class="caption"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
		<td class="text">
			Le <b>mot de passe</b> entr� ne correspond pas avec le mot de passe du compte.<br>
		</td>
	</tr>
</table>
<br/>	
{/if}
{if isset($badconfirm)}
<table>
	<tr>
		<div class="caption"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/error.png"> Erreur !</div>
		<td class="text">
			Les <b>mots de passe</b> entr�s ne sont pas les m�mes.<br>
		</td>
	</tr>
</table>
<br/>	
{/if}	
{if isset($pass_changed)}
<table>
	<tr>
		<div class="caption"><img width="16" height="16" style="float: left;" src="{$URL_ASSETS_GLOBAL}devtool/clean.png"> F�licitation !</div>
		<td class="text">
			Votre mot de passe a �t� <b>chang�</b> avec succ�s.<br>
		</td>
	</tr>
</table>
<br/>	
{/if}	
<table>
	<tr>
		<div class="caption">Mon compte</div>
		<td class="text">
			<center>
				<table style="width: 340px;" border="0">
					<tbody>
						<tr>
							<td style="width:150px">Nom de compte : </td>
							<td>{$user_data.account}</td>
						</tr>
						<tr>
							<td style="width:150px">Adresse mail : </td>
							<td>{$user_data.mail}</td>
						</tr>
						<tr>
							<td style="width:150px">Mon pseudo : </td>
							<td>{$user_data.pseudo}</td>
						</tr>
						<tr>
							<td style="width:150px">Nombre de vote : </td>
							<td style="width:150px">{$user_data.nb_votes}</td>
						</tr>
						<tr>
							<td style="width:150px">Points disponible : </td>
							<td style="width:150px">{$user_data.tokens}</td>
						</tr>
						<tr>
							<td style="width:150px">Derniere IP :</td>
							<td style="width:150px">{$user_data.last_ip}</td>
						</tr>
						<tr>
							<td style="width:150px">Derniere Connection :</td>
							<td style="width:150px">{$user_data.last_co}</td>
						</tr>
						<tr>
							<td style="width:150px">Question secr�te :</td>
							<td style="width:150px">{$user_data.question}</td>
						</tr>
						<tr>
							<td style="width:150px">Compte :</td>
							<td style="width:150px">{$user_data.player_lv}</td>
						</tr>
						<tr>
							<td style="width:150px">Connect� :</td>
							<td style="width:150px">{$user_data.connected}</td>
						</tr>
					</tbody>
				</table>
			</center>
		</td>
	</tr>
</table>
<br/>	
<table>
	<tr>
		<div class="caption">Changement de mot de passe</div>
		<td class="text">
			<center>
				<table style="width: 400px;" border="0">
					<form action="" method="post">
						<tr>
							<td style="width:250px">Ancien mot de passe :</td>
							<td style="width:150px"><input class="input" name="oldpass" value="" type="password" required></td>
						</tr>
						<tr>
							<td style="width:250px">Nouveau mot de passe :</td>
							<td style="width:150px"><input class="input" name="pass" value="" type="password" required></td>
						</tr>
						<tr>
							<td style="width:250px">Confirmer le nouveau mot de passe :</td>
							<td style="width:150px"><input class="input" name="passconf" value="" type="password" required></td>
						</tr>
				</table>
				<center>
				<input class="input" name="change" value="Changer" type="submit">
				</center>
				</form>
			</center>
		</td>
	</tr>
</table>
<br/>		
{/block}