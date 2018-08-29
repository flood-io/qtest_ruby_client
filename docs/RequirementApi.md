# SwaggerClient::RequirementApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](RequirementApi.md#add_comment) | **POST** /api/v3/projects/{projectId}/requirements/{idOrKey}/comments | Adds a Comment to a Requirement
[**create_requirement**](RequirementApi.md#create_requirement) | **POST** /api/v3/projects/{projectId}/requirements | Creates a Requirement
[**delete**](RequirementApi.md#delete) | **DELETE** /api/v3/projects/{projectId}/requirements/{requirementId} | Deletes a Requirement
[**delete_comment**](RequirementApi.md#delete_comment) | **DELETE** /api/v3/projects/{projectId}/requirements/{idOrKey}/comments/{commentId} | Deletes a Comment of a Requirement
[**get_comment**](RequirementApi.md#get_comment) | **GET** /api/v3/projects/{projectId}/requirements/{idOrKey}/comments/{commentId} | Gets a Comment of a Requirement
[**get_comments**](RequirementApi.md#get_comments) | **GET** /api/v3/projects/{projectId}/requirements/{idOrKey}/comments | Gets all Comments of a Requirement
[**get_public_traceability_matrix_report**](RequirementApi.md#get_public_traceability_matrix_report) | **GET** /api/v3/projects/{projectId}/requirements/trace-matrix-report | Gets Requirement Traceability Matrix Report
[**get_requirement**](RequirementApi.md#get_requirement) | **GET** /api/v3/projects/{projectId}/requirements/{requirementId} | Gets a Requirement
[**get_requirements**](RequirementApi.md#get_requirements) | **GET** /api/v3/projects/{projectId}/requirements | Gets multiple Requirements
[**update_comment**](RequirementApi.md#update_comment) | **PUT** /api/v3/projects/{projectId}/requirements/{idOrKey}/comments/{commentId} | Updates a Comment of a Requirement
[**update_requirement**](RequirementApi.md#update_requirement) | **PUT** /api/v3/projects/{projectId}/requirements/{requirementId} | Updates a Requirement


# **add_comment**
> CommentResource add_comment(project_id, id_or_key, body)

Adds a Comment to a Requirement

To add a comment to a Requirement  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Requirement.

body = SwaggerClient::CommentResource.new # CommentResource | The comment's properties and its content


begin
  #Adds a Comment to a Requirement
  result = api_instance.add_comment(project_id, id_or_key, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->add_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Requirement. | 
 **body** | [**CommentResource**](CommentResource.md)| The comment&#39;s properties and its content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_requirement**
> RequirementResource create_requirement(project_id, body, opts)

Creates a Requirement

To create a new Requirement  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::RequirementResource.new # RequirementResource | <p><em>name *:</em> Requirement name</p><p><em>properties:</em> An array of field-value pairs</p>

opts = { 
  parent_id: 789 # Integer | ID of the parent Module under which the Requirement will be located
}

begin
  #Creates a Requirement
  result = api_instance.create_requirement(project_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->create_requirement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**RequirementResource**](RequirementResource.md)| &lt;p&gt;&lt;em&gt;name *:&lt;/em&gt; Requirement name&lt;/p&gt;&lt;p&gt;&lt;em&gt;properties:&lt;/em&gt; An array of field-value pairs&lt;/p&gt; | 
 **parent_id** | **Integer**| ID of the parent Module under which the Requirement will be located | [optional] 

### Return type

[**RequirementResource**](RequirementResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete**
> Object delete(project_id, requirement_id)

Deletes a Requirement

To delete a Requirement  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

requirement_id = 789 # Integer | ID of the Requirement which needs to be deleted.


begin
  #Deletes a Requirement
  result = api_instance.delete(project_id, requirement_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **requirement_id** | **Integer**| ID of the Requirement which needs to be deleted. | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_comment**
> Object delete_comment(project_id, id_or_key, comment_id)

Deletes a Comment of a Requirement

To delete a comment of a Requirement  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Requirement whose comment you want to delete

comment_id = 789 # Integer | The comment's ID


begin
  #Deletes a Comment of a Requirement
  result = api_instance.delete_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->delete_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Requirement whose comment you want to delete | 
 **comment_id** | **Integer**| The comment&#39;s ID | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comment**
> CommentResource get_comment(project_id, id_or_key, comment_id)

Gets a Comment of a Requirement

To retrieve a comment of a Requirement  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Requirement whose comment you want to delete

comment_id = 789 # Integer | The comment's ID


begin
  #Gets a Comment of a Requirement
  result = api_instance.get_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->get_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Requirement whose comment you want to delete | 
 **comment_id** | **Integer**| The comment&#39;s ID | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comments**
> PagedResourceCommentResource get_comments(project_id, id_or_key)

Gets all Comments of a Requirement

To retrieve all comments of a Requirement  <strong>qTest Manager version:</strong> 7.6+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Requirement whose comments you want to retrieve


begin
  #Gets all Comments of a Requirement
  result = api_instance.get_comments(project_id, id_or_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->get_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Requirement whose comments you want to retrieve | 

### Return type

[**PagedResourceCommentResource**](PagedResourceCommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_public_traceability_matrix_report**
> Array&lt;TraceabilityRequirement&gt; get_public_traceability_matrix_report(project_id, opts)

Gets Requirement Traceability Matrix Report

To retrieve a report of Requirements with their covering Test Cases

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  page: 1, # Integer | By default the first page is returned but you can specify any page number to retrieve requirements.
  size: 20, # Integer | The result is paginated. By default, the number of requirements in each page is 20.  You can specify your custom number in this parameter and the maximum number is 999.
  field_ids: "field_ids_example" # String | ID(s) of requirement fields (system or custom fields) which you would like to retrieve.  They are separated by commas.
}

begin
  #Gets Requirement Traceability Matrix Report
  result = api_instance.get_public_traceability_matrix_report(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->get_public_traceability_matrix_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **page** | **Integer**| By default the first page is returned but you can specify any page number to retrieve requirements. | [optional] [default to 1]
 **size** | **Integer**| The result is paginated. By default, the number of requirements in each page is 20.  You can specify your custom number in this parameter and the maximum number is 999. | [optional] [default to 20]
 **field_ids** | **String**| ID(s) of requirement fields (system or custom fields) which you would like to retrieve.  They are separated by commas. | [optional] 

### Return type

[**Array&lt;TraceabilityRequirement&gt;**](TraceabilityRequirement.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_requirement**
> RequirementResource get_requirement(project_id, requirement_id)

Gets a Requirement

To retrieve a Requirement  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

requirement_id = 789 # Integer | ID of the Requirement which you want to retrieve.


begin
  #Gets a Requirement
  result = api_instance.get_requirement(project_id, requirement_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->get_requirement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **requirement_id** | **Integer**| ID of the Requirement which you want to retrieve. | 

### Return type

[**RequirementResource**](RequirementResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_requirements**
> Array&lt;RequirementResource&gt; get_requirements(project_id, opts)

Gets multiple Requirements

To retrieve all Requirements or Requirements under a specific Module

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  parent_id: 789, # Integer | Specify the parent Module's ID to retrieve all of its Requirements which are located directly under the parent Module
  page: 1, # Integer | By default the first page is returned but you can specify any page number to retrieve requirements.
  size: 56 # Integer | The result is paginated. By the default, the number of requirements in each page is 20.  You can specify your custom number in this parameter.
}

begin
  #Gets multiple Requirements
  result = api_instance.get_requirements(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->get_requirements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **parent_id** | **Integer**| Specify the parent Module&#39;s ID to retrieve all of its Requirements which are located directly under the parent Module | [optional] 
 **page** | **Integer**| By default the first page is returned but you can specify any page number to retrieve requirements. | [optional] [default to 1]
 **size** | **Integer**| The result is paginated. By the default, the number of requirements in each page is 20.  You can specify your custom number in this parameter. | [optional] 

### Return type

[**Array&lt;RequirementResource&gt;**](RequirementResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_comment**
> CommentResource update_comment(project_id, id_or_key, comment_id, body)

Updates a Comment of a Requirement

To modify a comment of a Requirement  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Requirement whose comment you want to update

comment_id = 789 # Integer | The comment's ID

body = SwaggerClient::CommentResource.new # CommentResource | The comment's updated content


begin
  #Updates a Comment of a Requirement
  result = api_instance.update_comment(project_id, id_or_key, comment_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->update_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Requirement whose comment you want to update | 
 **comment_id** | **Integer**| The comment&#39;s ID | 
 **body** | [**CommentResource**](CommentResource.md)| The comment&#39;s updated content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_requirement**
> RequirementResource update_requirement(project_id, requirement_id, body, opts)

Updates a Requirement

To update properties of an Requirement or to move it to other parent Module

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

api_instance = SwaggerClient::RequirementApi.new

project_id = 789 # Integer | ID of the project

requirement_id = 789 # Integer | ID of the Requirement which needs to be updated.

body = SwaggerClient::RequirementResource.new # RequirementResource | <strong>name: *</strong> Requirement name.  <strong>properties:</strong> An array of field-value pairs

opts = { 
  parent_id: 789 # Integer | ID of the parent Module to which the Requirement will be moved to
}

begin
  #Updates a Requirement
  result = api_instance.update_requirement(project_id, requirement_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RequirementApi->update_requirement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **requirement_id** | **Integer**| ID of the Requirement which needs to be updated. | 
 **body** | [**RequirementResource**](RequirementResource.md)| &lt;strong&gt;name: *&lt;/strong&gt; Requirement name.  &lt;strong&gt;properties:&lt;/strong&gt; An array of field-value pairs | 
 **parent_id** | **Integer**| ID of the parent Module to which the Requirement will be moved to | [optional] 

### Return type

[**RequirementResource**](RequirementResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



