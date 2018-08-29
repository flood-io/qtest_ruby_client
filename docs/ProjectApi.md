# SwaggerClient::ProjectApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project**](ProjectApi.md#create_project) | **POST** /api/v3/projects | Creates a Project
[**get_current_profile**](ProjectApi.md#get_current_profile) | **GET** /api/v3/projects/{projectId}/user-profiles/current | Gets current user Permissions in a Project
[**get_project**](ProjectApi.md#get_project) | **GET** /api/v3/projects/{projectId} | Gets a Project
[**get_projects**](ProjectApi.md#get_projects) | **GET** /api/v3/projects | Gets multiple Projects
[**get_users**](ProjectApi.md#get_users) | **GET** /api/v3/projects/{projectId}/users | Gets all Users in a Project


# **create_project**
> Object create_project(body)

Creates a Project

To create a new Project  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ProjectApi.new

body = SwaggerClient::ProjectResource.new # ProjectResource | 


begin
  #Creates a Project
  result = api_instance.create_project(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectApi->create_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProjectResource**](ProjectResource.md)|  | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_current_profile**
> UserProfile get_current_profile(project_id)

Gets current user Permissions in a Project

To retrieve your Permissions in a Project  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ProjectApi.new

project_id = 789 # Integer | ID of the project


begin
  #Gets current user Permissions in a Project
  result = api_instance.get_current_profile(project_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectApi->get_current_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_project**
> ProjectResource get_project(project_id, opts)

Gets a Project

To retrieve a specific Project

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

api_instance = SwaggerClient::ProjectApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  expand: "expand_example" # String | <em>expand=userprofile</em> - include the your profile and permissions within the project in the response
}

begin
  #Gets a Project
  result = api_instance.get_project(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectApi->get_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **expand** | **String**| &lt;em&gt;expand&#x3D;userprofile&lt;/em&gt; - include the your profile and permissions within the project in the response | [optional] 

### Return type

[**ProjectResource**](ProjectResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_projects**
> Array&lt;ProjectResource&gt; get_projects(opts)

Gets multiple Projects

To retrieve all Projects which the requested qTest  Manager account can access to  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::ProjectApi.new

opts = { 
  expand: "expand_example", # String | <em>expand=userprofile</em> - to include your profile and permissions in each project
  assigned: true # BOOLEAN | <em>assigned=true</em> - default value. Only the projects which the requested user has access to  <em>assigned=false</em> - Users with admin profile can use this value to retrieve all projects, regardless of having access
}

begin
  #Gets multiple Projects
  result = api_instance.get_projects(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectApi->get_projects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**| &lt;em&gt;expand&#x3D;userprofile&lt;/em&gt; - to include your profile and permissions in each project | [optional] 
 **assigned** | **BOOLEAN**| &lt;em&gt;assigned&#x3D;true&lt;/em&gt; - default value. Only the projects which the requested user has access to  &lt;em&gt;assigned&#x3D;false&lt;/em&gt; - Users with admin profile can use this value to retrieve all projects, regardless of having access | [optional] 

### Return type

[**Array&lt;ProjectResource&gt;**](ProjectResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_users**
> Array&lt;UserResource&gt; get_users(project_id, opts)

Gets all Users in a Project

To retrieve all members in a qTest Manager Project  <strong>qTest Manager version:</strong> 8.4.2+

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

api_instance = SwaggerClient::ProjectApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  inactive: true # BOOLEAN | <em>inactive=false</em> - default value. Inactive users are excluded from the response  <em>inactive=true</em> - inactive users are included in the response
}

begin
  #Gets all Users in a Project
  result = api_instance.get_users(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **inactive** | **BOOLEAN**| &lt;em&gt;inactive&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;inactive&#x3D;true&lt;/em&gt; - inactive users are included in the response | [optional] 

### Return type

[**Array&lt;UserResource&gt;**](UserResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



