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
    {ts}Personalize the contents and appearance of your personal campaign page here. You will be able to return to this page and make changes at any time.{/ts}
</div>
<hr>
<fieldset class="crm-pcp-campaign-group">
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
      {$form.goal_amount.html|crmAddClass:six|crmAddClass:'form-control'}
      <div class="description">{ts}Total amount you would like to raise for this campaign.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-is_thermometer-section crm-contribution-form-block-is_thermometer clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.is_thermometer.label}</h3></div>
    <div class="content col-xs-12 col-sm-6 checkbox">
      {$form.is_thermometer.html}
      <div class="description">{ts}If this option is checked, a "thermometer" showing progress toward your goal will be included on the page.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-donate_link_text-section crm-contribution-form-block-donate_link_text clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.donate_link_text.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.donate_link_text.html|crmAddClass:'form-control'}
      <div class="description">{ts}The text for the contribute or register button.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="crm-section crm-pcp-page_text-section crm-contribution-form-block-page_text clearfix">
    <div class="label col-xs-12 col-sm-6"><h3>{$form.page_text.label}</h3></div>
    <div class="content col-xs-12 col-sm-6">
      {$form.page_text.html|crmAddClass:huge|crmAddClass:'form-control'}
      <div class="description">{ts}Tell people why this campaign is important to you.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
  {include file="CRM/Form/attachment.tpl" context="pcpCampaign"}
  <div class="crm-section crm-pcp-is_honor_roll-section crm-contribution-form-block-is_honor_roll clearfix">
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
      <div class="description">{ts}Is your Personal Campaign Page active? You can activate/de-activate it any time during it's lifecycle.{/ts}</div>
    </div>
    <div class="clear"></div>
  </div>
{/crmRegion}
</div>
<div class="crm-submit-buttons col-xs-12 col-sm-4 form-group col-sm-offset-8 text-center">{include file="CRM/common/formButtons.tpl" location="bottom"}</div>
</fieldset>
<script type="text/javascript">
    // Always open attachment div by default for this form
    cj('#attachments').show();
</script>
