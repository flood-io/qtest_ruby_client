# SwaggerClient::CommonApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**edit_system_field**](CommonApi.md#edit_system_field) | **POST** /api/v3/projects/{projectId}/settings/{objectType}/system-fields/{fieldId} | Edit System Field of an Object Type by the field
[**update_custom_field**](CommonApi.md#update_custom_field) | **POST** /api/v3/projects/{projectId}/settings/{objectType}/custom-fields/active | field.updateCustomField


# **edit_system_field**
> FieldResource edit_system_field(project_id, field_id, body, object_type)

Edit System Field of an Object Type by the field

To edit System Field of an Object Type by the field

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Authorization
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::CommonApi.new

project_id = 789 # Integer | ID of the project

field_id = 789 # Integer | ID of the field.

body = SwaggerClient::FieldResource.new # FieldResource | Given resource to edit a system field.

object_type = "object_type_example" # String | The object type.


begin
  #Edit System Field of an Object Type by the field
  result = api_instance.edit_system_field(project_id, field_id, body, object_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommonApi->edit_system_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **field_id** | **Integer**| ID of the field. | 
 **body** | [**FieldResource**](FieldResource.md)| Given resource to edit a system field. | 
 **object_type** | **String**| The object type. | 

### Return type

[**FieldResource**](FieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_custom_field**
> Array&lt;FieldResource&gt; update_custom_field(project_id, object_type, body)

field.updateCustomField

Update active or inactive custom fields of an Object Type

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Authorization
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::CommonApi.new

project_id = 789 # Integer | ID of the project

object_type = "object_type_example" # String | The object type

body = [SwaggerClient::FieldResource.new] # Array<FieldResource> | Given resource to update custom fields.


begin
  #field.updateCustomField
  result = api_instance.update_custom_field(project_id, object_type, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CommonApi->update_custom_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **object_type** | **String**| The object type | 
 **body** | [**Array&lt;FieldResource&gt;**](FieldResource.md)| Given resource to update custom fields. | 

### Return type

[**Array&lt;FieldResource&gt;**](FieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



