# SwaggerClient::ModuleApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_module**](ModuleApi.md#create_module) | **POST** /api/v3/projects/{projectId}/modules | Creates a Module
[**delete_module**](ModuleApi.md#delete_module) | **DELETE** /api/v3/projects/{projectId}/modules/{moduleId} | Deletes a Module
[**get_module**](ModuleApi.md#get_module) | **GET** /api/v3/projects/{projectId}/modules/{moduleId} | Gets a Module
[**get_sub_modules_of**](ModuleApi.md#get_sub_modules_of) | **GET** /api/v3/projects/{projectId}/modules | Gets multiple Modules
[**update_module**](ModuleApi.md#update_module) | **PUT** /api/v3/projects/{projectId}/modules/{moduleId} | Updates a Module


# **create_module**
> ModuleResource create_module(project_id, body, opts)

Creates a Module

To create a Module under root or a sub-Module under a parent Module  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ModuleApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::ModuleResource.new # ModuleResource | <em>name (required):</em> the Module name  <em>shared:</em> Specify <em>shared=true</em> to share this Module to other projects. Only use it if Test Case Sharing feature is enabled in your project

opts = { 
  parent_id: 789 # Integer | The parent Module which will contain the newly created one. If it is not specified, the newly created module is located under root  Use this parameter if your qTest Manager version is 6+. For older versions, use <em>parent_id</em> in the request body
}

begin
  #Creates a Module
  result = api_instance.create_module(project_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ModuleApi->create_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**ModuleResource**](ModuleResource.md)| &lt;em&gt;name (required):&lt;/em&gt; the Module name  &lt;em&gt;shared:&lt;/em&gt; Specify &lt;em&gt;shared&#x3D;true&lt;/em&gt; to share this Module to other projects. Only use it if Test Case Sharing feature is enabled in your project | 
 **parent_id** | **Integer**| The parent Module which will contain the newly created one. If it is not specified, the newly created module is located under root  Use this parameter if your qTest Manager version is 6+. For older versions, use &lt;em&gt;parent_id&lt;/em&gt; in the request body | [optional] 

### Return type

[**ModuleResource**](ModuleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_module**
> Message delete_module(project_id, module_id, opts)

Deletes a Module

To delete a Module  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::ModuleApi.new

project_id = 789 # Integer | ID of the project

module_id = 789 # Integer | ID of Module to delete

opts = { 
  force: true # BOOLEAN | <em>force=true</em> - delete the Module and its children  force=false - default value. Only delete the Module if it contains no sub Modules or Test Cases
}

begin
  #Deletes a Module
  result = api_instance.delete_module(project_id, module_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ModuleApi->delete_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **module_id** | **Integer**| ID of Module to delete | 
 **force** | **BOOLEAN**| &lt;em&gt;force&#x3D;true&lt;/em&gt; - delete the Module and its children  force&#x3D;false - default value. Only delete the Module if it contains no sub Modules or Test Cases | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_module**
> ModuleResource get_module(project_id, module_id, opts)

Gets a Module

To retrieve a Module  <em>qTest Manager version:</em> 6+

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

api_instance = SwaggerClient::ModuleApi.new

project_id = 789 # Integer | ID of the project

module_id = 789 # Integer | ID of the Module

opts = { 
  expand: "expand_example" # String | Specify <em>expand=descendants</em> to include the Module's sub and grand-sub Modules in the response
}

begin
  #Gets a Module
  result = api_instance.get_module(project_id, module_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ModuleApi->get_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **module_id** | **Integer**| ID of the Module | 
 **expand** | **String**| Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to include the Module&#39;s sub and grand-sub Modules in the response | [optional] 

### Return type

[**ModuleResource**](ModuleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_sub_modules_of**
> Array&lt;ModuleResource&gt; get_sub_modules_of(project_id, opts)

Gets multiple Modules

To search for Modules under root or sub-Modules under a parent Module  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::ModuleApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  parent_id: 789, # Integer | ID of the parent Module. Leave it blank to retrieve Modules under root
  search: "search_example", # String | The free-text to search for Modules by names. You can utilize this parameter to search for Modules. Leave it blank to retrieve all Modules under root or the parent Module
  expand: "expand_example" # String | 
}

begin
  #Gets multiple Modules
  result = api_instance.get_sub_modules_of(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ModuleApi->get_sub_modules_of: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **parent_id** | **Integer**| ID of the parent Module. Leave it blank to retrieve Modules under root | [optional] 
 **search** | **String**| The free-text to search for Modules by names. You can utilize this parameter to search for Modules. Leave it blank to retrieve all Modules under root or the parent Module | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Array&lt;ModuleResource&gt;**](ModuleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_module**
> ModuleResource update_module(project_id, module_id, body, opts)

Updates a Module

To update a Module or move it to another parent Module

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

api_instance = SwaggerClient::ModuleApi.new

project_id = 789 # Integer | ID of the project

module_id = 789 # Integer | ID of the Module

body = SwaggerClient::ModuleResource.new # ModuleResource | The Module's update properties

opts = { 
  parent_id: 789 # Integer | ID of the parent Module which the Module will be moved to  <strong>Important:</strong> If you use this parameter, the request body will be ignored. That means the Module is being moved but it will not be updated with the properties specified in the request body
}

begin
  #Updates a Module
  result = api_instance.update_module(project_id, module_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ModuleApi->update_module: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **module_id** | **Integer**| ID of the Module | 
 **body** | [**ModuleResource**](ModuleResource.md)| The Module&#39;s update properties | 
 **parent_id** | **Integer**| ID of the parent Module which the Module will be moved to  &lt;strong&gt;Important:&lt;/strong&gt; If you use this parameter, the request body will be ignored. That means the Module is being moved but it will not be updated with the properties specified in the request body | [optional] 

### Return type

[**ModuleResource**](ModuleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



