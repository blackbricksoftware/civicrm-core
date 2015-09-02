{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.5                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2014                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}
{* this template is used for displaying PCP information *}
{if $owner}
<div class="messages status no-popup">
  <div class="icon inform-icon"></div>
  <p><strong>{ts}Campaign Preview{/ts}</strong> - {ts}This is a preview of your Campaign Page in support of{/ts} <a href="{$parentURL}"><strong>{$pageName}</strong></a>.</p>
        {ts}The current status of your page is{/ts}: <strong {if $pcp.status_id NEQ 2}class=disabled {/if}>{$owner.status}</strong>.
        {if $pcp.status_id NEQ 2}<br /><span class="description">{ts}You will receive an email notification when your page is Approved and you can begin promoting your campaign.{/ts}</span>{/if}
        {if $pcp.page_type EQ 'event'}
            {if $owner.registration_start_date}<br />{ts}People can register for this event starting on {/ts} <strong>{$owner.registration_start_date|truncate:10:''|crmDate}</strong>{if $owner.registration_end_date} {ts}until{/ts} <strong>{$owner.registration_end_date|truncate:10:''|crmDate}</strong>{/if}.{/if}
        {else}
            {if $owner.start_date}<br />{ts}This campaign is active from{/ts} <strong>{$owner.start_date|truncate:10:''|crmDate}</strong> {ts}until{/ts} <strong>{$owner.end_date|truncate:10:''|crmDate}</strong>.{/if}
        {/if}
        <br /><br />
        <table class="form-layout-compressed table table-striped">
        <tr><td colspan="2"><strong>{ts}You can{/ts}:</strong></td></tr>
    {foreach from = $links key = k item = v}
          <tr>
            <td>
				{if $k eq '4'}
					<input type="text" value="{crmURL p=$v.url q=$v.qs|replace:'%%pcpId%%':$replace.id|replace:'%%pageComponent%%':$replace.pageComponent|replace:'%%pcpBlock%%':$replace.block}" title="{$v.title}" {if $v.extra}{$v.extra}{/if} class="form-control" style="cursor: text;"  onclick="{literal}javascript:this.select();{/literal}" readonly>
				{else}
					<a href="{crmURL p=$v.url q=$v.qs|replace:'%%pcpId%%':$replace.id|replace:'%%pageComponent%%':$replace.pageComponent|replace:'%%pcpBlock%%':$replace.block}" title="{$v.title}" {if $v.extra}{$v.extra}{/if}><strong>&raquo; {$v.name}</strong></a>
				{/if}
       </td>
         <td>&nbsp;<cite>{$hints.$k}</cite></td>
      </tr>
        {/foreach}
       </table>
     <div class="icon tip-icon"></div>
     <strong>{ts}Tip{/ts}</strong> - <span class="description">{ts}You must be logged in to your account to access the editing options above. (If you visit this page without logging in, you will be viewing the page in "live" mode - as your visitors and friends see it.){/ts}</span>
     <hr>
</div>
{/if}
<div class="campaign">
{crmRegion name="pcp-page-pcpinfo"}
    {if $image}
    <div class="pcp-image pull-right thumbnail">
       {$image}
     </div>
     {/if}
     {if $pcp.is_thermometer OR $pcp.is_honor_roll}
      <div class="pcp-widgets">
      <div class="thermometer-wrapper">
		  {if $pcp.is_thermometer  && $pcpteams_type_id EQ '1'}
          <div class="pcp-amount-goal">
            <h2>{ts}Goal{/ts} <span class="goal-amount crmMoney">{$pcp.goal_amount|crmMoney}</span></h2>
        </div>
		<div class="thermometer-fill-wrapper progress">
			<div style="width: {$achieved}%; min-width: 2em;"  aria-valuenow="{$achieved}" aria-valuemin="0" aria-valuemax="100" class="thermometer-fill progress-bar">
			  <div class="thermometer-pointer"><span class="pcp-percent-raised">{$achieved|string_format:"%d"}%</span></div>
			</div><!-- /.thermometer-fill -->
		</div><!-- /.thermometer-fill-wrapper -->
		{/if}
		<div class="pcp-amount-raised">
			 <h4><span class="raised-amount crmMoney">{$total|crmMoney}</span> {ts}raised{/ts}</h4>
		</div>
    </div>
      <div class="pcp-intro-text">
		  {$pcp.intro_text}
	  </div>
	  <!--remove me-->
	   {if $validDate && $contributeURL && $pcpteams_type_id EQ '1'}
			<br>
		  <div class="pcp-donate">
			{* Show link to PCP contribution if configured for online contribution *}
				<a href="{$contributeURL}" class="button contribute-button pcp-contribute-button btn btn-success" target="_blank"><span>Contribute Now</span></a>
			</div>
		{/if}
		<!--end remove me-->
      {if $pcp.is_honor_roll && $pcpteams_type_id EQ '1'}
      <div class="clearfix"></div>
      <hr>
      <div class="honor-roll-wrapper">
        <div class="honor-roll-title"><h3>{ts}Honor Roll{/ts} <small>[<a href="#" onclick="roll_start_stop(); return false;" id="roll" title="Stop scrolling">{ts}Stop{/ts}</a>]</small></h3></div>
          <div class="honor_roll">
              <marquee behavior="scroll" direction="up" id="pcp_roll" scrolldelay="200" bgcolor="#000">
                {foreach from = $honor item = v}
                <div class="pcp_honor_roll_entry">
                    <div class="pcp-honor_roll-nickname">{$v.nickname}</div>
                    <div class="pcp-honor_roll-total_amount">{$v.total_amount}</div>
                    <div class="pcp-honor_roll-personal_note">{$v.personal_note}</div>
				</div>
                {/foreach}
              </marquee>
          </div>
        </div>
     {/if}

     </div>
      {/if}

	<br>
    <blockquote class="pcp-page-text hide">
      {$pcp.page_text}
    </blockquote>

	<div class="clearfix">
	   {if $linkText && false}
	   <div class="pcp-create-your-own">
			<a href="{$linkTextUrl}" class="pcp-create-link btn btn-primary"><span>{$linkText}</span></a>
	   </div>
	   {/if}
	   {if $validDate && $contributeURL && $pcpteams_type_id EQ '1'}
		  <div class="pcp-donate">
			{* Show link to PCP contribution if configured for online contribution *}
				<a href="{$contributeURL}" class="button contribute-button pcp-contribute-button btn btn-success" target="_blank"><span>Contribute Now</span></a>
			</div>
		{/if}
	  </div>
   
{/crmRegion}
</div><!-- /.campaign -->




{literal}
<script language="JavaScript">


var start=true;
function roll_start_stop( ) {
  if ( start ) {
    document.getElementById('roll').innerHTML = "{/literal}{ts escape='js'}Start{/ts}{literal}";
    document.getElementById('roll').title = "{/literal}{ts escape='js'}Start scrolling{/ts}{literal}";
    document.getElementById('pcp_roll').stop();
    start=false;
         } else {
    document.getElementById('roll').innerHTML = "{/literal}{ts escape='js'}Stop{/ts}{literal}";
    document.getElementById('roll').title = "{/literal}{ts escape='js'}Stop scrolling{/ts}{literal}";
    document.getElementById('pcp_roll').start();
    start=true;
         }
}
</script>
{/literal}
