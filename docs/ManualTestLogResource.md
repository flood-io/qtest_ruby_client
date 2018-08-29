# SwaggerClient::ManualTestLogResource

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
**status** | [**StatusResource**](StatusResource.md) | Test Log status | 
**result_number** | **Integer** |  | [optional] 
**test_step_logs** | [**Array&lt;TestStepLogResource&gt;**](TestStepLogResource.md) | Arrays of Test Step Log,   With called test steps, the \&quot;called_test_case_id\&quot; and \&quot;parent_test_step_id\&quot; must be included in request body. | [optional] 
**defects** | [**Array&lt;LinkedDefectResource&gt;**](LinkedDefectResource.md) | Array of Defect | [optional] 


