{* HEADER *}

<div>

<h3>Data Protection Officer</h3>

<div class="crm-block crm-form-block crm-gdpr-settings-form-block">

<div id="help">
	{ts}Set your organisation's data protection officer.{/ts}
</div>

<div class="crm-section">
	<div class="label">{$form.data_officer.label}</div>
	<div class="content">
		{$form.data_officer.html}
		<br />
         <span class="description"><i>{ts}Under the GDPR, you must appoint a data protection officer (DPO).{/ts} <a href='https://ico.org.uk/for-organisations/data-protection-reform/overview-of-the-gdpr/accountability-and-governance/#dpo' target='_blank'>More info</a></i></span>
	</div>
	<div class="clear"></div>
</div>

</div>

<h3>Activity types</h3>

<div class="crm-block crm-form-block crm-gdpr-settings-form-block">

<div id="help">
	{ts}Set activity types to check for contacts that have not had any activity for a set period.{/ts}
</div>

<div class="crm-section">
	<div class="label">{$form.contact_type.label}</div>
	<div class="content">
		{$form.contact_type.html}
		<br />
        <span class="description"><i>{ts}Check only these contact types who have not had any activity.{/ts}</i></span>
	</div>
	<div class="clear"></div>
</div>

<div class="crm-section">
	<div class="label">{$form.activity_type.label}</div>
	<div class="content">
		{$form.activity_type.html}
		<br />
        <span class="description"><i>{ts}Check for contacts who have not had any activity of these types.{/ts}</i></span>
	</div>
	<div class="clear"></div>
</div>

<div class="crm-section">
	<div class="label">{$form.activity_period.label}</div>
	<div class="content">
		{$form.activity_period.html} (days)
	</div>
	<div class="clear"></div>
</div>

</div>

<!-- Forget Me settings -->
<h3>Forget me</h3>

<div class="crm-block crm-form-block crm-gdpr-settings-form-block">
	<div id="help">
		{ts}Settings related to 'Forget me' process.{/ts}
	</div>

	<div class="crm-section">
		<div class="label">{$form.forgetme_name.label}</div>
		<div class="content">
			{$form.forgetme_name.html}
			<br />
	        <span class="description"><i>{ts}Name to be used for contacts that have been made anonymous.{/ts}</i></span>
		</div>
		<div class="clear"></div>
	</div>
</div>
<!-- /Forget me settings -->

<!--  Acceptance settings-->
<h3>Data Policy</h3>

<div class="crm-block crm-form-block crm-gdpr-settings-form-block">
	<div id="help">
		{ts}Settings related to sitewise agreements such as Data Policy or Terms and Conditions.
     These settings will apply in the Communications Preferences page and when Terms and Conditions are used with Events.
    {/ts}
	</div>

	<div class="crm-section">
		<div class="label">{$form.sla_period.label}</div>
		<div class="content">
			{$form.sla_period.html}
			<br />
	        <span class="description"><i>{ts}Number of months since contact accepted until they are due to renew.{/ts}</i></span>
		</div>
		<div class="clear"></div>
	</div>
	<div class="crm-section">
		<div class="label">{$form.sla_tc_upload.label}</div>
    {if $sla_tc_current} 
    <div class="clear current-file">
    <div class="label">Current:</div>
      <div class="content"> <a href="{$sla_tc_current.url}" target="blank">{$sla_tc_current.name}</a><br />
      {if $sla_tc_version}
        <span class="description">Version: {$sla_tc_version}. <br />
          {if $sla_tc_updated}
             Updated: {$sla_tc_updated}
          {/if}
        </span>
        </div>
      {/if}
    {/if}
		<div class="content">
			{$form.sla_tc_upload.html}
			<br />
	        <span class="description"><i>{ts}Pdf document with the Policy/Terms.{/ts}</i></span>
		</div>
	<div class="crm-section tc-new-version-section">
		<div class="label">{$form.sla_tc_new_version.label}</div>
		<div class="content">
			{$form.sla_tc_new_version.html}
			<br />
	        <span class="description"><i>{ts}Check this if the document has changed substantially and contacts need to renew their agreement.{/ts}</i></span>

      </div>
		</div>

		<div class="clear"></div>
    <div class="crm-section">
      <div class="label">{$form.sla_link_label.label}</div>
      <div class="content">{$form.sla_link_label.html}
        <br /><span class="description"><i>{ts} Text to use for the link. Usually the document title.{/ts}</i></span>
      </div>
    </div>
		<div class="clear"></div>
    <div class="crm-section">
      <div class="label">{$form.sla_checkbox_text.label}</div>
      <div class="content">{$form.sla_checkbox_text.html}
        <br /><span class="description"><i>{ts} Text for the checkbox. An acceptance statement.{/ts}</i></span>
      </div>
    </div>
    <div class="crm-section">
      <div class="label">{$form.sla_page_title.label}</div>
      <div class="content">{$form.sla_page_title.html}
        <br /><span class="description"><i>{ts}The title for the user-facing page with the acceptance form.{/ts}</i></span>
      </div>
    </div>
		<div class="clear"></div>
    <div class="crm-section">
      <div class="label">{$form.sla_agreement_text.label}</div>
      <div class="content">{$form.sla_agreement_text.html}</div>
    </div>
	</div>
</div>
<!-- /SLA Acceptance -->
{* FOOTER *}
<div class="crm-submit-buttons">
{include file="CRM/common/formButtons.tpl" location="bottom"}
</div>

</div>
{literal}
<script>
(function($) {
  var versionChk = $('.tc-new-version-section');
  versionChk.hide();
  $('#sla_tc_upload').on('change', function(){
      versionChk.show();
    });
  }(cj));
{/literal}
</script>
