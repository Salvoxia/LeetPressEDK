{cycle reset=true print=false name=ccl values="kb-table-row-even,kb-table-row-odd"}
	<table class="kb-table" width="380" border="0" cellspacing="1">
	{foreach from=$involved key="key" item="i"}
	<tr class="kill-pilot-name">
		<td colspan="3"><a href="{$i.pilotURL}">{$i.pilotName}</a>
		
		</td>
	</tr>
		<col class="logo" />
		<col class="logo" />
		<col class="attribute-data" />
		<tr class="{cycle name="ccl"}">
			<td rowspan="5" class="logo" width="64">
				<a href="{$i.pilotURL}">
					<img {if $i.finalBlow} class="finalblow" {/if} src="{$i.portrait}" alt="inv portrait" />
				</a>
			</td>
			<td rowspan="5" class="logo" width="64">
				{if $i.shipURL}<a href="{$i.shipURL}">{/if}
					<img {if $i.finalBlow} class="finalblow"{/if} src='{$i.shipImage}' alt='{$i.shipName}' title='{$i.shipName}' />
				{if $i.shipURL}</a>{/if}
			</td>
<td><a href="{$i.corpURL}"><b>{$i.corpName}</b></a></td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>{if $i.alliURL}<a href="{$i.alliURL}">{$i.alliName}</a>{else}{$i.alliName}{/if}</td>
		</tr>
		<tr class="{cycle name="ccl"}">
			{if $i.shipURL}<td><a href="{$i.shipURL}"><b>{$i.shipName}</b></a> ({$i.shipClass})</td>
			{else}<td>{$i.shipName}</td>{/if}
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>{if $i.weaponID}<a href="{$i.weaponURL}">{$i.weaponName}</a>{else}{$i.weaponName}{/if}</td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>Damage done: <b>{$i.damageDone} {if $victimDamageTaken > 0}</b>({($i.damageDone/$victimDamageTaken*100)|string_format:"%.2f"}%){/if}</td>
		</tr>
{/foreach}
{if $limited}<tr class="{cycle name="ccl"}">
			<td colspan="3">{$moreInvolved} pilot{if $moreInvolved > 1}s{/if} not shown. <a href="{$unlimitURL}">Show all involved pilots</a></td>
		</tr>
{/if}
	</table>

