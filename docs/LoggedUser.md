# SwaggerClient::LoggedUser

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] 
**id** | **Integer** | ID of the User | [optional] 
**user_name** | **String** | Login email of the User | [optional] 
**first_name** | **String** | First name | [optional] 
**last_name** | **String** | Last name | [optional] 
**client_id** | **Integer** | ID of qTest site that User logged in | [optional] 
**client_name** | **String** | qTest instance client site name | [optional] 
**client_site** | **String** | URL of qTest instance | [optional] 
**timezone_offset** | **String** | Timezone setting of User | [optional] 
**avatar** | **String** | URL to User&#39;s Avatar | [optional] 
**access_admin_page** | **BOOLEAN** | Can access admin page or not | [optional] [default to false]
**client_site_name** | **String** | qTest instance sub domain name | [optional] 
**package_type** | **String** | Package type | [optional] 
**applications** | [**Array&lt;AppDetail&gt;**](AppDetail.md) | List qTest products which User can access | [optional] 
**support_links** | **Hash&lt;String, String&gt;** | Arrays of Supports link | [optional] 


