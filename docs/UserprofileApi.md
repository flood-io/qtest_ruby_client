# SwaggerClient::UserprofileApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_assign_user_profile_in_client**](UserprofileApi.md#batch_assign_user_profile_in_client) | **POST** /api/v3/user-profiles/batch-assign-users | Assigns multiple Users to a Profile
[**batch_assign_user_profile_in_project**](UserprofileApi.md#batch_assign_user_profile_in_project) | **POST** /api/v3/user-profiles/{projectId}/batch-assign-users | Assigns multiple Users to a Profile in a Project
[**get_current**](UserprofileApi.md#get_current) | **GET** /api/v3/admin-profiles/current | Gets current User&#39;s Admin Profile
[**get_profiles_of_current_user**](UserprofileApi.md#get_profiles_of_current_user) | **GET** /api/v3/user-profiles/current | Gets current User&#39;s Profiles in different Projects
[**get_user_profiles**](UserprofileApi.md#get_user_profiles) | **GET** /api/v3/user-profiles | Gets available Profiles


# **batch_assign_user_profile_in_client**
> Array&lt;UserResourceExtension&gt; batch_assign_user_profile_in_client(body)

Assigns multiple Users to a Profile

To batch assign users to a profile (Admin profile, User profile) (as in qTest Manager <em>admin panel</em>). It requires that your qTest Manager profile is a site admin with <em>Manage Client Users</em> permissions  <strong>qTest Manager version:</strong> 8.4.2+

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

api_instance = SwaggerClient::UserprofileApi.new

body = SwaggerClient::SiteUsersProfile.new # SiteUsersProfile | An array of user IDs and admin and/or normal user profile


begin
  #Assigns multiple Users to a Profile
  result = api_instance.batch_assign_user_profile_in_client(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserprofileApi->batch_assign_user_profile_in_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteUsersProfile**](SiteUsersProfile.md)| An array of user IDs and admin and/or normal user profile | 

### Return type

[**Array&lt;UserResourceExtension&gt;**](UserResourceExtension.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **batch_assign_user_profile_in_project**
> Array&lt;UserResourceExtension&gt; batch_assign_user_profile_in_project(project_id, body)

Assigns multiple Users to a Profile in a Project

To change profile of assigned users (as a project's User Management page). It requires that your qTest Manager profile within the project is Project Admin  <strong>qTest Manager version:</strong> 8.4.2+

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

api_instance = SwaggerClient::UserprofileApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::ProjectUsersProfile.new # ProjectUsersProfile | An array of user IDs and a user profile


begin
  #Assigns multiple Users to a Profile in a Project
  result = api_instance.batch_assign_user_profile_in_project(project_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserprofileApi->batch_assign_user_profile_in_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**ProjectUsersProfile**](ProjectUsersProfile.md)| An array of user IDs and a user profile | 

### Return type

[**Array&lt;UserResourceExtension&gt;**](UserResourceExtension.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_current**
> AdminProfile get_current

Gets current User's Admin Profile

To retrieve your Admin Profile  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::UserprofileApi.new

begin
  #Gets current User's Admin Profile
  result = api_instance.get_current
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserprofileApi->get_current: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AdminProfile**](AdminProfile.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_profiles_of_current_user**
> Array&lt;UserProfile&gt; get_profiles_of_current_user

Gets current User's Profiles in different Projects

To retrieve your User Profiles in different Projects

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

api_instance = SwaggerClient::UserprofileApi.new

begin
  #Gets current User's Profiles in different Projects
  result = api_instance.get_profiles_of_current_user
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserprofileApi->get_profiles_of_current_user: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserProfile&gt;**](UserProfile.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_user_profiles**
> UserProfileResponse get_user_profiles(opts)

Gets available Profiles

To retrieve all available profiles in your qTest Manager instance. It requires that your qTest Manager profile is a site admin with <em>View User Profiles</em> permissions  <strong>qTest Manager version:</strong> 8.4.2+

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

api_instance = SwaggerClient::UserprofileApi.new

opts = { 
  type: "type_example" # String | <em>type=admin</em> - to retrieve only admin profiles  <em>type=use</em> - to retrieve only normal user profiles  Omit this parameter to include both
}

begin
  #Gets available Profiles
  result = api_instance.get_user_profiles(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserprofileApi->get_user_profiles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| &lt;em&gt;type&#x3D;admin&lt;/em&gt; - to retrieve only admin profiles  &lt;em&gt;type&#x3D;use&lt;/em&gt; - to retrieve only normal user profiles  Omit this parameter to include both | [optional] 

### Return type

[**UserProfileResponse**](UserProfileResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



