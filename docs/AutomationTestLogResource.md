# SwaggerClient::AutomationTestLogResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**id** | **Integer** |  | [optional] 
**test_case_version_id** | **Integer** | ID of the Test Case Version | [optional] 
**exe_start_date** | **DateTime** | Execution start date | 
**exe_end_date** | **DateTime** | Execution end date | 
**note** | **String** | Note | [optional] 
**attachments** | [**Array&lt;AttachmentResource&gt;**](AttachmentResource.md) | Test Log attachments | [optional] 
**name** | **String** | Test Run&#39;s name | [optional] 
**planned_exe_time** | **Integer** |  | [optional] 
**actual_exe_time** | **Integer** |  | [optional] 
**build_number** | **String** | Jenkins jobs build number | [optional] 
**build_url** | **String** | Jenkins jobs build URL | [optional] 
**properties** | [**Array&lt;PropertyResource&gt;**](PropertyResource.md) |  | [optional] 
**system_name** | **String** |  | [optional] 
**status** | **String** | Test Log status | [optional] 
**order** | **Integer** |  | [optional] 
**test_step_logs** | [**Array&lt;AutomationTestStepLog&gt;**](AutomationTestStepLog.md) | Arrays of Test Step Log | [optional] 
**module_names** | **Array&lt;String&gt;** | Arrays of Modules | [optional] 
**agent_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**automation_content** | **String** | Test Case&#39;s automation content | [optional] 


