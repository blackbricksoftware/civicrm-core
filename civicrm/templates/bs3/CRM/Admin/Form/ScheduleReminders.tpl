{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.5                                                |
 +--------------------------------------------------------------------+
 | Copyright (C) 2011 Marty Wright                                    |
 | Licensed to CiviCRM under the Academic Free License version 3.0.   |
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
{* This template is used for adding/scheduling reminders.  *}
<div class="crm-block crm-form-block crm-scheduleReminder-form-block">
 <div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="top"}</div>

{if $action eq 8}
  <div class="messages status no-popup">
      <div class="icon inform-icon"></div>
        {ts 1=$reminderName}WARNING: You are about to delete the Reminder titled <strong>%1</strong>.{/ts} {ts}Do you want to continue?{/ts}
  </div>
{else}
  <table class="form-layout-compressed">
    <tr class="crm-scheduleReminder-form-block-title">
        <td class="right">{$form.title.label}</td><td colspan="3">{$form.title.html}</td>
    </tr>
     <tr>
        <td class="label">{$form.entity.label}</td>
        <td>{$form.entity.html}</td>
    </tr>

    <tr class="crm-scheduleReminder-form-block-when">
        <td class="right">{$form.start_action_offset.label}</td>
        <td colspan="3">{include file="CRM/common/jcalendar.tpl" elementName=absolute_date} <strong>{ts}OR{/ts}</strong><br /></td>
    </tr>

    <tr id="relativeDate" class="crm-scheduleReminder-form-block-description">
        <td class="right"></td>
        <td colspan="3">{$form.start_action_offset.html}&nbsp;&nbsp;&nbsp;{$form.start_action_unit.html}&nbsp;&nbsp;&nbsp;{$form.start_action_condition.html}&nbsp;&nbsp;&nbsp;{$form.start_action_date.html}</td>
    </tr>
    <tr id="recordActivity" class="crm-scheduleReminder-form-block-record_activity"><td class="label" width="20%">{$form.record_activity.label}</td>
        <td>{$form.record_activity.html}</td>
    </tr>
    <tr id="relativeDateRepeat" class="crm-scheduleReminder-form-block-is_repeat"><td class="label" width="20%">{$form.is_repeat.label}</td>
        <td>{$form.is_repeat.html}&nbsp;&nbsp;<span class="description">{ts}Enable repetition.{/ts}</span></td>
    </tr>
    <tr id="repeatFields" class="crm-scheduleReminder-form-block-repeatFields"><td></td><td>
        <table class="form-layout-compressed">
          <tr class="crm-scheduleReminder-form-block-repetition_frequency_interval">
            <td class="label">{$form.repetition_frequency_interval.label}&nbsp;&nbsp;&nbsp;{$form.repetition_frequency_interval.html}</td>
          <td>{$form.repetition_frequency_unit.html}</td>
          </tr>
          <tr class="crm-scheduleReminder-form-block-repetition_frequency_interval">
             <td class="label">{$form.end_frequency_interval.label}&nbsp;&nbsp;&nbsp;{$form.end_frequency_interval.html}
           <td>{$form.end_frequency_unit.html}&nbsp;&nbsp;&nbsp;{$form.end_action.html}&nbsp;&nbsp;&nbsp;{$form.end_date.html}</td>
          </tr>
        </table>
     </td>
    </tr>
    <tr>
      <td class="label" width="20%">{$form.from_name.label}</td>
      <td>{$form.from_name.html}&nbsp;&nbsp;{help id="id-from_name_email"}</td>
    </tr>
    <tr>
      <td class="label" width="20%">{$form.from_email.label}</td>
      <td>{$form.from_email.html}&nbsp;&nbsp;</td>
    </tr>
    <tr class="crm-scheduleReminder-form-block-recipient">
      <td id="recipientLabel" class="right">{$form.recipient.label}</td><td colspan="3">{$form.limit_to.html}&nbsp;&nbsp;{$form.recipient.html}&nbsp;&nbsp;{help id="recipient" title=$form.recipient.label}</td>
    </tr>
    <tr id="recipientList" class="crm-scheduleReminder-form-block-recipientListing">
        <td class="right">{$form.recipient_listing.label}</td><td colspan="3">{$form.recipient_listing.html}</td>
    </tr>
    <tr id="recipientManual" class="crm-scheduleReminder-form-block-recipient_manual_id">
        <td class="label">{$form.recipient_manual_id.label}</td>
        <td>{$form.recipient_manual_id.html}{edit}<div class="description">{ts}You can manually send out the reminders to these recipients.{/ts}</div>{/edit}</td>
    </tr>

    <tr id="recipientGroup" class="crm-scheduleReminder-form-block-recipient_group_id">
        <td class="label">{$form.group_id.label}</td>
        <td>{$form.group_id.html}</td>
    </tr>
    <tr id="msgMode" class="crm-scheduleReminder-form-block-mode">
      <td class="label">{$form.mode.label}</td>
      <td>{$form.mode.html}</td>
    </tr>
    <tr id="smsProvider" class="crm-scheduleReminder-form-block-sms_provider_id">
      <td class="label">{$form.sms_provider_id.label}</td>
      <td>{$form.sms_provider_id.html}</td>
    </tr>
  </table>
  <fieldset id="compose_id"><legend>{$title}</legend>
     <table id="email-field-table" class="form-layout-compressed">
        <tr class="crm-scheduleReminder-form-block-active">
           <td class="label"></td>
           <td>{$form.is_active.html}&nbsp;{$form.is_active.label}</td>
        </tr>
        <tr class="crm-scheduleReminder-form-block-template">
            <td class="label">{$form.template.label}</td>
            <td>{$form.template.html}</td>
        </tr>
        <tr class="crm-scheduleReminder-form-block-subject">
            <td class="label">{$form.subject.label}</td>
            <td>{$form.subject.html}</td>
        </tr>

  </table>
    <div id="email">{include file="CRM/Contact/Form/Task/EmailCommon.tpl" upload=1 noAttach=1}</div>
    {if $sms}<div id="sms">{include file="CRM/Contact/Form/Task/SMSCommon.tpl" upload=1 noAttach=1}</div>{/if}
  </fieldset>

{include file="CRM/common/showHideByFieldValue.tpl"
    trigger_field_id    = "is_repeat"
    trigger_value       = "true"
    target_element_id   = "repeatFields"
    target_element_type = "table-row"
    field_type          = "radio"
    invert              = "false"
}

{include file="CRM/common/showHideByFieldValue.tpl"
    trigger_field_id    ="recipient"
    trigger_value       = 'manual'
    target_element_id   ="recipientManual"
    target_element_type ="table-row"
    field_type          ="select"
    invert              = 0
}

{include file="CRM/common/showHideByFieldValue.tpl"
    trigger_field_id    ="recipient"
    trigger_value       = 'group'
    target_element_id   ="recipientGroup"
    target_element_type ="table-row"
    field_type          ="select"
    invert              = 0
}

{literal}
<script type='text/javascript'>
    var entityMapping = eval({/literal}{$entityMapping}{literal});
    var recipientMapping = eval({/literal}{$recipientMapping}{literal});


    CRM.$(function($) {
      $('#absolute_date_display').change(function() {
        if($('#absolute_date_display').val()) {
          $('#relativeDate').hide();
          $('#relativeDateRepeat').hide();
          $('#repeatFields').hide();
        } else {
          $('#relativeDate').show();
          $('#relativeDateRepeat').show();
        }
      });
      
      if ($('#absolute_date_display').val()) {
        $('#relativeDate, #relativeDateRepeat, #repeatFields').hide();
      }

      $('#entity_0').change( function( ) {
        buildSelect("start_action_date");
        buildSelect("end_date");
        buildSelect1("recipient");
        showHideLimitTo();
      });

      loadMsgBox();
      $('#mode').change(loadMsgBox);

      showHideLimitTo();

      if ($('#is_recipient_listing').val()) {
        $('#recipientList').show();
      }
      else {
        $('#recipientList').hide();
      }
      $('#recipient').change(populateRecipient);
    });

  function loadMsgBox() {
    if (cj('#mode').val() == 'Email' || cj('#mode').val() == 0){
      cj('#sms').hide();
      cj('#smsProvider').hide();
      cj('#email').show();
    }
    else if (cj('#mode').val() == 'SMS'){
      cj('#email').hide();
      cj('#sms').show();
      cj('#smsProvider').show();
    }
    else if (cj('#mode').val() == 'User_Preference'){
        cj('#email').show();
        cj('#sms').show();
        cj('#smsProvider').show();
      }
  }

  function showHideLimitTo() {
    if (cj('#entity_0').val() == 1) {
      cj('#limit_to').hide();
    }
    else {
      cj('#limit_to').show();
    }
  }

  function populateRecipient( ) {
    var recipient = cj("#recipient option:selected").val();
    var entity = cj("#entity_0 option:selected").val();
    var postUrl = "{/literal}{crmURL p='civicrm/ajax/populateRecipient' h=0}{literal}";

    if (recipientMapping[recipient] == 'Participant Status' || recipientMapping[recipient] == 'participant_role') {
      var elementID = '#recipient_listing';
      cj( elementID ).html('');
      cj.post(postUrl, {recipient: recipientMapping[recipient]},
      function ( response ) {
        response = eval( response );
        for (i = 0; i < response.length; i++) {
          cj( elementID ).get(0).add(new Option(response[i].name, response[i].value), document.all ? i : null);
        }
      });
      cj("#recipientList").show();
      cj('#is_recipient_listing').val(1);
    } else {
      cj("#recipientList").hide();
      cj('#is_recipient_listing').val('');
    }
  }
  
  function buildSelect( selectID ) {
    var elementID = '#' +  selectID;
    cj( elementID ).html('');
    var mappingID = cj('#entity_0').val();
    var postUrl = "{/literal}{crmURL p='civicrm/ajax/mapping' h=0}{literal}";
    cj.post( postUrl, { mappingID: mappingID},
    function ( response ) {
      response = eval( response );
      for (i = 0; i < response.length; i++) {
        cj( elementID ).get(0).add(new Option(response[i].name, response[i].value), document.all ? i : null);
      }
    }
    );
  }

  function buildSelect1( selectID ) {
    var elementID = '#' +  selectID;
    cj( elementID ).html('');
    var mappingID = cj('#entity_0').val();
    var postUrl1 = "{/literal}{crmURL p='civicrm/ajax/mapping1' h=0}{literal}";

    cj('#is_recipient_listing').val('');
    cj.post( postUrl1, { mappingID: mappingID},
    function ( result ) {
      var responseResult = cj.parseJSON(result);
      var response       = eval(responseResult.sel5);
      recipientMapping   = eval(responseResult.recipientMapping);
      for (i = 0; i < response.length; i++) {
        cj( elementID ).get(0).add(new Option(response[i].name, response[i].value), document.all ? i : null);
      }
      populateRecipient();
    }
    );
  }

 </script>
 {/literal}

{/if}

 <div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="bottom"}</div>
</div>