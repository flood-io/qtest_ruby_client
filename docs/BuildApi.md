# SwaggerClient::BuildApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](BuildApi.md#create) | **POST** /api/v3/projects/{projectId}/builds | Creates a Build
[**delete**](BuildApi.md#delete) | **DELETE** /api/v3/projects/{projectId}/builds/{buildId} | Deletes a Build
[**get**](BuildApi.md#get) | **GET** /api/v3/projects/{projectId}/builds/{buildId} | Gets a Build
[**get_builds**](BuildApi.md#get_builds) | **GET** /api/v3/projects/{projectId}/builds | Gets multiple Builds
[**update**](BuildApi.md#update) | **PUT** /api/v3/projects/{projectId}/builds/{buildId} | Updates a Build


# **create**
> BuildResource create(project_id, body)

Creates a Build

To create a Build under a parent Release  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::BuildApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::BuildResource.new # BuildResource | <em>name (required):</em> Build name  <em>release (required):</em> The parent Release under which the Build will be located  <em>properties:</em> An array of field-value pairs


begin
  #Creates a Build
  result = api_instance.create(project_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BuildApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**BuildResource**](BuildResource.md)| &lt;em&gt;name (required):&lt;/em&gt; Build name  &lt;em&gt;release (required):&lt;/em&gt; The parent Release under which the Build will be located  &lt;em&gt;properties:&lt;/em&gt; An array of field-value pairs | 

### Return type

[**BuildResource**](BuildResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete**
> Object delete(project_id, build_id)

Deletes a Build

To delete a Build  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::BuildApi.new

project_id = 789 # Integer | ID of the project

build_id = 789 # Integer | ID of the Build to delete


begin
  #Deletes a Build
  result = api_instance.delete(project_id, build_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BuildApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **build_id** | **Integer**| ID of the Build to delete | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get**
> BuildResource get(project_id, build_id)

Gets a Build

To retrieve a Build<strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::BuildApi.new

project_id = 789 # Integer | ID of the project

build_id = 789 # Integer | ID of the Build


begin
  #Gets a Build
  result = api_instance.get(project_id, build_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BuildApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **build_id** | **Integer**| ID of the Build | 

### Return type

[**BuildResource**](BuildResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_builds**
> Array&lt;BuildResource&gt; get_builds(project_id, release_id)

Gets multiple Builds

To retrieve all Builds under a Release  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::BuildApi.new

project_id = 789 # Integer | ID of the project

release_id = 789 # Integer | ID of the parent Release


begin
  #Gets multiple Builds
  result = api_instance.get_builds(project_id, release_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BuildApi->get_builds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **release_id** | **Integer**| ID of the parent Release | 

### Return type

[**Array&lt;BuildResource&gt;**](BuildResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> BuildResource update(project_id, build_id, body)

Updates a Build

To update a Build  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::BuildApi.new

project_id = 789 # Integer | ID of the project

build_id = 789 # Integer | ID of the Build

body = SwaggerClient::BuildResource.new # BuildResource | The Build's updated properties


begin
  #Updates a Build
  result = api_instance.update(project_id, build_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BuildApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **build_id** | **Integer**| ID of the Build | 
 **body** | [**BuildResource**](BuildResource.md)| The Build&#39;s updated properties | 

### Return type

[**BuildResource**](BuildResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



