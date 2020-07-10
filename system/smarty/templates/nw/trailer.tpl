{extends file="$THEME/layout.tpl"}
{block name=title}Trailer{/block}
{block name=body}
<div id="contenu">
<img src="{$URL_ASSETS}img/global/topContenu.png"/> <div id="title"><span>Trailer de {$TITLE} </span>Trailer de {$TITLE} </div>
<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
<h1>● Trailer de présentation de {$TITLE}</h1>
<div id="trailler">
<iframe width="580" height="345" src="{$TRAILER_URL}" frameborder="0" allowfullscreen></iframe>
</div>
<img src="{$URL_ASSETS}img/global/hr.png" class="hr"/>
<h3>» Nous vous invitons à <a href="{$URL}/server/play">rejoindre</a> {$TITLE} et faire partie de la communauté.</h3>
<img src="{$URL_ASSETS}img/global/bottomContenu.png"/>
</div>
{/block}