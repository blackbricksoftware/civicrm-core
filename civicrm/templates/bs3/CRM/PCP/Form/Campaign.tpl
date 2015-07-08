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
<div id="help">
    {ts}Personalize the contents and appearance of your campaign page here. You will be able to return to this page and make changes at any time.{/ts}
</div>
<hr>
<fieldset class="crm-pcp-campaign-group">
	<blockquote><h3>If you are a raft commander please create your raft page first. Once the raft page is complete, visit <a href="https://rapidquest.org/pcp">https://rapidquest.org/pcp</a> to complete your personal page. You will be able to manage both pages with the same login.</he></blockquote>
<div class="crm-block crm-contribution-campaign-form-block">
{crmRegion name="pcp-form-campaign"}
  <div class="crm-section crm-pcp-title-section crm-contribution-form-block-title clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.pcp_title.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.pcp_title.html|crmAddClass:big|crmAddClass:'form-control'}
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-intro_text-section crm-contribution-form-block-intro_text clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.pcp_intro_text.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.pcp_intro_text.html|crmAddClass:big|crmAddClass:'form-control'}
      <div class="description">{ts}Introduce the campaign and why you're supporting it. This text will appear at the top of your personal page AND at the top of the main contribution or event registration page.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-goal_amount-section crm-contribution-form-block-goal_amount clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.goal_amount.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.goal_amount.html|crmAddClass:'form-control'|crmInsert:"value":"1250"}
      <div class="description">{ts}Total amount you would like to raise for this campaign.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-is_thermometer-section crm-contribution-form-block-is_thermometer clearfix hide">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.is_thermometer.label}</h3></div>
    <div class="content col-xs-12 col-sm-6 checkbox">
      {$form.is_thermometer.html}
      <div class="description">{ts}If this option is checked, a "thermometer" showing progress toward your goal will be included on the page.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-donate_link_text-section crm-contribution-form-block-donate_link_text clearfix hide">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.donate_link_text.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.donate_link_text.html|crmAddClass:'form-control'}
      <div class="description">{ts}The text for the contribute or register button.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-page_text-section crm-contribution-form-block-page_text clearfix hide">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.page_text.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.page_text.html|crmAddClass:'form-control'}
      <div class="description">{ts}Tell people why this campaign is important to you.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  {include file="CRM/Form/attachment.tpl" context="pcpCampaign"}
  <div class="crm-section crm-pcp-is_honor_roll-section crm-contribution-form-block-is_honor_roll clearfix hide">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.is_honor_roll.label}</h3></div>
    <div class="content col-xs-12 col-sm-6 checkbox">
      {$form.is_honor_roll.html}
      <div class="description">{ts}If this option is checked, an "honor roll" will be displayed with the names (or nicknames) of the people who supported you. (Donors will have the option to remain anonymous. Their names will NOT be listed.){/ts}</div>{* [ML] string changed #9704 *}
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-is_active crm-contribution-form-block-is_active clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.is_active.label}</h3></div>
    <div class="content col-xs-12 col-sm-6 checkbox">
      {$form.is_active.html}
      <div class="description">{ts}Is your Campaign Page active? You can activate/de-activate it any time during it's lifecycle.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
{/crmRegion}
</div>
<div class="crm-submit-buttons col-xs-12 col-sm-4 form-group col-sm-offset-8 text-center">{include file="CRM/common/formButtons.tpl" location="bottom"}</div>
</fieldset>
<script type="text/javascript">{literal}
	cj(function(){
		// Always open attachment div by default for this form
		cj('#attachments').show();
			
		// set and or hide minimum goal amount
		var goal_amount = function(){
			// hide goad amount
			if (cj('input[type="radio"][name="pcp_team_type"]:checked').val() == 1 || cj('input[type="hidden"][name="pcp_team_type"]').val() == 1 ) {
				cj('.crm-pcp-goal_amount-section').slideDown('slow');
				// set goal amount
				var val = cj('#goal_amount').val();
				val = val.replace(/[^\d\.]/g,''); //console.log(val);
				if (!val.match(/\d/)) val = 0; //console.log(val);
				val = parseFloat(val); //console.log(val);
				if (isNaN(val)||val<1250) { //console.log(val);
					alert('Minimum goal is $1250');
					val = 1250;
				}
				cj('#goal_amount').val(val.toFixed(2));
			} else {
				cj('.crm-pcp-goal_amount-section').slideUp();
			}
		};
		goal_amount();
		cj('#goal_amount, input[name="pcp_team_type"]').change(goal_amount);
		
		var default_pcp_intro_text = function(){
			var currentText = cj('#pcp_intro_text').val();
			if (cj.trim(currentText).length>0) return;
			var defaultText = 'Thank you for your support on my important Quest!\n\n'+
			'Your contribution is helping provide life-changing, and life-saving, support for some of the most vulnerable members of our shared community at the Center.  Check it out:\n\n'+
			'$10 = a full day of meals for a homeless youth\n'+
			'$25 = access to a month’s worth of support groups for a senior\n'+
			'$50 = a full day of services (meals, shower, laundry, employment training, etc.) for one young person at our youth center\n'+
			'$100 = comprehensive HIV/STD testing and counseling for one client\n\n'+
			'And, thanks to Wells Fargo, every dollar you give will go directly to the youth and senior services at the Center. As demand for the Center’s services grows, your support is more crucial than ever. What will make my Quest and the Center a success is one thing: you!';
			cj('#pcp_intro_text').val(defaultText)
		};
		default_pcp_intro_text();
		cj('#pcp_intro_text').change(default_pcp_intro_text);
	});
{/literal}</script>
