# SwaggerClient::ProjectResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**id** | **Integer** | ID of the Project | [optional] 
**name** | **String** | Name of the Project | [optional] 
**description** | **String** | Description of the Project | [optional] 
**status_id** | **Integer** | Status of the Project | [optional] 
**start_date** | **DateTime** | Start date of the Project | [optional] 
**end_date** | **DateTime** | End date of the Project | [optional] 
**admins** | **Array&lt;String&gt;** | Arrays of admin user | [optional] 
**sample** | **BOOLEAN** | Is sample or not | [optional] [default to false]
**user_profile** | [**UserProfile**](UserProfile.md) | Arrays of User Profile in Project | [optional] 
**defect_tracking_systems** | [**Array&lt;DefectTrackingSystem&gt;**](DefectTrackingSystem.md) | Arrays of External Defect Tracking Connection | [optional] 
**x_explorer_access_level** | **Integer** | Can access Explorer | [optional] 
**date_format** | **String** | Client date time format | [optional] 
**automation** | **BOOLEAN** | Automation enabled or not | [optional] [default to false]


