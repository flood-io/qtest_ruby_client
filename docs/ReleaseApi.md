# SwaggerClient::ReleaseApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReleaseApi.md#create) | **POST** /api/v3/projects/{projectId}/releases | Creates a Release
[**delete**](ReleaseApi.md#delete) | **DELETE** /api/v3/projects/{projectId}/releases/{releaseId} | Delete a release
[**get**](ReleaseApi.md#get) | **GET** /api/v3/projects/{projectId}/releases/{releaseId} | Gets a Release
[**get_all**](ReleaseApi.md#get_all) | **GET** /api/v3/projects/{projectId}/releases | Gets multiple Releases
[**update**](ReleaseApi.md#update) | **PUT** /api/v3/projects/{projectId}/releases/{releaseId} | Updates a Release


# **create**
> ReleaseWithCustomFieldResource create(project_id, body)

Creates a Release

To create a Release  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ReleaseApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::ReleaseWithCustomFieldResource.new # ReleaseWithCustomFieldResource | The Release's properties


begin
  #Creates a Release
  result = api_instance.create(project_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReleaseApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**ReleaseWithCustomFieldResource**](ReleaseWithCustomFieldResource.md)| The Release&#39;s properties | 

### Return type

[**ReleaseWithCustomFieldResource**](ReleaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete**
> Object delete(project_id, release_id)

Delete a release

To delete a Release

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

api_instance = SwaggerClient::ReleaseApi.new

project_id = 789 # Integer | ID of the project

release_id = 789 # Integer | ID of the Release which needs to be deleted  <strong>qTest Manager version:</strong> 6+


begin
  #Delete a release
  result = api_instance.delete(project_id, release_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReleaseApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **release_id** | **Integer**| ID of the Release which needs to be deleted  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+ | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get**
> ReleaseWithCustomFieldResource get(project_id, release_id)

Gets a Release

To retrieve a Release  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ReleaseApi.new

project_id = 789 # Integer | ID of the project

release_id = 789 # Integer | ID of the Release


begin
  #Gets a Release
  result = api_instance.get(project_id, release_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReleaseApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **release_id** | **Integer**| ID of the Release | 

### Return type

[**ReleaseWithCustomFieldResource**](ReleaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_all**
> Array&lt;ReleaseWithCustomFieldResource&gt; get_all(project_id, opts)

Gets multiple Releases

To retrieve Releases in a project  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ReleaseApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  include_closed: true # BOOLEAN | <em>includeClosed=false</em> - default value. <em>Closed</em> Releases are excluded from the response  <em>includeClosed=false</em> - Closed Release are included in the response
}

begin
  #Gets multiple Releases
  result = api_instance.get_all(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReleaseApi->get_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **include_closed** | **BOOLEAN**| &lt;em&gt;includeClosed&#x3D;false&lt;/em&gt; - default value. &lt;em&gt;Closed&lt;/em&gt; Releases are excluded from the response  &lt;em&gt;includeClosed&#x3D;false&lt;/em&gt; - Closed Release are included in the response | [optional] 

### Return type

[**Array&lt;ReleaseWithCustomFieldResource&gt;**](ReleaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> ReleaseWithCustomFieldResource update(project_id, release_id, body)

Updates a Release

To update a Release  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::ReleaseApi.new

project_id = 789 # Integer | ID of the project

release_id = 789 # Integer | ID of the Release which needs to be updated

body = SwaggerClient::ReleaseWithCustomFieldResource.new # ReleaseWithCustomFieldResource | The Release's updated properties


begin
  #Updates a Release
  result = api_instance.update(project_id, release_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReleaseApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **release_id** | **Integer**| ID of the Release which needs to be updated | 
 **body** | [**ReleaseWithCustomFieldResource**](ReleaseWithCustomFieldResource.md)| The Release&#39;s updated properties | 

### Return type

[**ReleaseWithCustomFieldResource**](ReleaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



