# SwaggerClient::FieldApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](FieldApi.md#create) | **POST** /api/v3/projects/{projectId}/settings/{objectType}/fields | Creates a Custom Field of an Object Type
[**get_fields**](FieldApi.md#get_fields) | **GET** /api/v3/projects/{projectId}/settings/{objectType}/fields | Gets all Fields of an Object Type


# **create**
> FieldResource create(project_id, body, object_type)

Creates a Custom Field of an Object Type

To create a new custom Field for Release, Build, Requirement, Test Case, Test Suite, Test Run, or Defect

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

api_instance = SwaggerClient::FieldApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::FieldResource.new # FieldResource | The field's properties and values  <strong>data_type (required):</strong> specify the field type. Its valid values include  - 1 - Text box  - 2 - Text area  - 3 - Combo box  - 4 - Date picker  - 5 - User list  - 6 - Rich text editor  - 7 - Number  - 8 - Check box  - 9 - Date time picker  - 12 - URL  - 17 - Multiple selection combobox  In case you are creating a multiple picklist typed field (data_type's value is 8 or 17), you will need to specify <em>multiple=true</em>  In case you are creating a picklist typed field, you can specify the field's values in the <em>allowed_values</em> array

object_type = "object_type_example" # String | Valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs


begin
  #Creates a Custom Field of an Object Type
  result = api_instance.create(project_id, body, object_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FieldApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**FieldResource**](FieldResource.md)| The field&#39;s properties and values  &lt;strong&gt;data_type (required):&lt;/strong&gt; specify the field type. Its valid values include  - 1 - Text box  - 2 - Text area  - 3 - Combo box  - 4 - Date picker  - 5 - User list  - 6 - Rich text editor  - 7 - Number  - 8 - Check box  - 9 - Date time picker  - 12 - URL  - 17 - Multiple selection combobox  In case you are creating a multiple picklist typed field (data_type&#39;s value is 8 or 17), you will need to specify &lt;em&gt;multiple&#x3D;true&lt;/em&gt;  In case you are creating a picklist typed field, you can specify the field&#39;s values in the &lt;em&gt;allowed_values&lt;/em&gt; array | 
 **object_type** | **String**| Valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs | 

### Return type

[**FieldResource**](FieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_fields**
> Array&lt;FieldResource&gt; get_fields(project_id, object_type, opts)

Gets all Fields of an Object Type

To retrieve Fields of an Object Type  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::FieldApi.new

project_id = 789 # Integer | ID of the project

object_type = "object_type_example" # String | valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs

opts = { 
  include_inactive: true # BOOLEAN | By default inactive Fields are excluded from the response. Specify <em>includeInactive=true</em> to include inactive fields
}

begin
  #Gets all Fields of an Object Type
  result = api_instance.get_fields(project_id, object_type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FieldApi->get_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **object_type** | **String**| valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs | 
 **include_inactive** | **BOOLEAN**| By default inactive Fields are excluded from the response. Specify &lt;em&gt;includeInactive&#x3D;true&lt;/em&gt; to include inactive fields | [optional] 

### Return type

[**Array&lt;FieldResource&gt;**](FieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



