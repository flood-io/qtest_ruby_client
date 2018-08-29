# SwaggerClient::TestrunApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](TestrunApi.md#add_comment) | **POST** /api/v3/projects/{projectId}/test-runs/{idOrKey}/comments | Adds a Comment to a Test Run
[**create**](TestrunApi.md#create) | **POST** /api/v3/projects/{projectId}/test-runs | Creates a Test Run
[**delete**](TestrunApi.md#delete) | **DELETE** /api/v3/projects/{projectId}/test-runs/{testRunId} | Deletes a Test Run
[**delete_comment**](TestrunApi.md#delete_comment) | **DELETE** /api/v3/projects/{projectId}/test-runs/{idOrKey}/comments/{commentId} | Deletes a Comment of a Test Run
[**get**](TestrunApi.md#get) | **GET** /api/v3/projects/{projectId}/test-runs/{testRunId} | Gets a Test Run
[**get_comment**](TestrunApi.md#get_comment) | **GET** /api/v3/projects/{projectId}/test-runs/{idOrKey}/comments/{commentId} | Gets a Comment from a Test Run
[**get_comments**](TestrunApi.md#get_comments) | **GET** /api/v3/projects/{projectId}/test-runs/{idOrKey}/comments | Gets all Comments of a Test Run
[**get_of**](TestrunApi.md#get_of) | **GET** /api/v3/projects/{projectId}/test-runs | Gets multiple Test Runs
[**get_status_valuable**](TestrunApi.md#get_status_valuable) | **GET** /api/v3/projects/{projectId}/test-runs/execution-statuses | Gets Test Run statuses
[**update**](TestrunApi.md#update) | **PUT** /api/v3/projects/{projectId}/test-runs/{testRunId} | Updates a Test Run
[**update_comment**](TestrunApi.md#update_comment) | **PUT** /api/v3/projects/{projectId}/test-runs/{idOrKey}/comments/{commentId} | Updates a Comment of a Test Run


# **add_comment**
> CommentResource add_comment(project_id, id_or_key, body)

Adds a Comment to a Test Run

To add a Comment to a Test Run  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | The PID or ID of the Test Run.

body = SwaggerClient::CommentResource.new # CommentResource | The Comment's content


begin
  #Adds a Comment to a Test Run
  result = api_instance.add_comment(project_id, id_or_key, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->add_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| The PID or ID of the Test Run. | 
 **body** | [**CommentResource**](CommentResource.md)| The Comment&#39;s content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create**
> TestRunWithCustomFieldResource create(project_id, body, opts)

Creates a Test Run

To create a Test Run under root or a container (Release, Test Cycle or Test Suite)  <strong>qTest Manager version:</strong> 6+You can optionally specify a parent in the request parameter to create its test runs.  The associated Test Case is specified in the request body

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::TestRunWithCustomFieldResource.new # TestRunWithCustomFieldResource | The Test Run's properties and its associated Test Case

opts = { 
  parent_id: 789, # Integer | ID of the container  Input 0 (zero) to get Test Runs directly under root
  parent_type: "parent_type_example" # String | Type of the container. Valid values include <em>root</em>, <em>release</em>, <em>test-cycle</em>, and <em>test-suite</em>
}

begin
  #Creates a Test Run
  result = api_instance.create(project_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**TestRunWithCustomFieldResource**](TestRunWithCustomFieldResource.md)| The Test Run&#39;s properties and its associated Test Case | 
 **parent_id** | **Integer**| ID of the container  Input 0 (zero) to get Test Runs directly under root | [optional] 
 **parent_type** | **String**| Type of the container. Valid values include &lt;em&gt;root&lt;/em&gt;, &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt;, and &lt;em&gt;test-suite&lt;/em&gt; | [optional] 

### Return type

[**TestRunWithCustomFieldResource**](TestRunWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete**
> Message delete(project_id, test_run_id)

Deletes a Test Run

To delete a Test Run  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

test_run_id = 789 # Integer | ID of the Test Run


begin
  #Deletes a Test Run
  result = api_instance.delete(project_id, test_run_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_run_id** | **Integer**| ID of the Test Run | 

### Return type

[**Message**](Message.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_comment**
> Object delete_comment(project_id, id_or_key, comment_id)

Deletes a Comment of a Test Run

To delete a Comment of a Test Run  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Run.

comment_id = 789 # Integer | ID of the comment which you want to delete.


begin
  #Deletes a Comment of a Test Run
  result = api_instance.delete_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->delete_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Run. | 
 **comment_id** | **Integer**| ID of the comment which you want to delete. | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get**
> TestRunWithCustomFieldResource get(project_id, test_run_id, opts)

Gets a Test Run

To retrieve a Test Run  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

test_run_id = 789 # Integer | ID of the Test Run.

opts = { 
  expand: "expand_example" # String | Valid values include:   i)<em>testcase</em> - to expand the associated Test Case in the response;   ii) <em>testcase.teststep</em> - to expand the associated Test Case and its Test Steps in the response
}

begin
  #Gets a Test Run
  result = api_instance.get(project_id, test_run_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_run_id** | **Integer**| ID of the Test Run. | 
 **expand** | **String**| Valid values include:   i)&lt;em&gt;testcase&lt;/em&gt; - to expand the associated Test Case in the response;   ii) &lt;em&gt;testcase.teststep&lt;/em&gt; - to expand the associated Test Case and its Test Steps in the response | [optional] 

### Return type

[**TestRunWithCustomFieldResource**](TestRunWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comment**
> CommentResource get_comment(project_id, id_or_key, comment_id)

Gets a Comment from a Test Run

To retrieve a specific Comment from a Test Run  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Run.

comment_id = 789 # Integer | ID of the Comment


begin
  #Gets a Comment from a Test Run
  result = api_instance.get_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->get_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Run. | 
 **comment_id** | **Integer**| ID of the Comment | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comments**
> PagedResourceCommentResource get_comments(project_id, id_or_key)

Gets all Comments of a Test Run

To retrieve all Comments of a Test Run  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Run


begin
  #Gets all Comments of a Test Run
  result = api_instance.get_comments(project_id, id_or_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->get_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Run | 

### Return type

[**PagedResourceCommentResource**](PagedResourceCommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_of**
> TestRunListResource get_of(project_id, opts)

Gets multiple Test Runs

To retrieve all Test Runs under root or under a container (Release, Test Cycle or Test Suite)  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  parent_id: 789, # Integer | ID of the container (Release, Test Cycle or Test Suite)  Input 0 (zero) to retrieve Test Runs directly under root
  parent_type: "parent_type_example", # String | Type of the container. Valid values include <em>root</em>, <em>release</em>, <em>test-cycle</em> and <em>test-suite</em>
  expand: "expand_example", # String | Specify <em>expand=descendants</em> to include all Test Runs which are directly or indirectly under the container
  page: 1, # Integer | By default the first page is returned but you can specify any page number to retrieve objects
  page_size: 100 # Integer | The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
}

begin
  #Gets multiple Test Runs
  result = api_instance.get_of(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->get_of: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **parent_id** | **Integer**| ID of the container (Release, Test Cycle or Test Suite)  Input 0 (zero) to retrieve Test Runs directly under root | [optional] 
 **parent_type** | **String**| Type of the container. Valid values include &lt;em&gt;root&lt;/em&gt;, &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; and &lt;em&gt;test-suite&lt;/em&gt; | [optional] 
 **expand** | **String**| Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to include all Test Runs which are directly or indirectly under the container | [optional] 
 **page** | **Integer**| By default the first page is returned but you can specify any page number to retrieve objects | [optional] [default to 1]
 **page_size** | **Integer**| The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter | [optional] [default to 100]

### Return type

[**TestRunListResource**](TestRunListResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_status_valuable**
> Array&lt;StatusResource&gt; get_status_valuable(project_id)

Gets Test Run statuses

Gets Test Run statuses

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project


begin
  #Gets Test Run statuses
  result = api_instance.get_status_valuable(project_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->get_status_valuable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 

### Return type

[**Array&lt;StatusResource&gt;**](StatusResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> TestRunWithCustomFieldResource update(project_id, test_run_id, body, opts)

Updates a Test Run

To update a Test Run or move it to another container  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

test_run_id = 789 # Integer | ID of the Test Run.

body = SwaggerClient::TestRunWithCustomFieldResource.new # TestRunWithCustomFieldResource | The Test Run's updated properties

opts = { 
  parent_id: 789, # Integer | ID of the container (Release, Test Cycle or Test Suite)  Input 0 (zero) to move the test run to under root  <strong>Important:</strong> If you use the request parameters, the request body will be ignored. That means the test run is being moved but it will not be updated with the properties specify in the request body
  parent_type: "parent_type_example" # String | Type of the container. Valid values include <em>root</em>, <em>release</em>, <em>test-cycle</em> and <em>test-suite</em>
}

begin
  #Updates a Test Run
  result = api_instance.update(project_id, test_run_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_run_id** | **Integer**| ID of the Test Run. | 
 **body** | [**TestRunWithCustomFieldResource**](TestRunWithCustomFieldResource.md)| The Test Run&#39;s updated properties | 
 **parent_id** | **Integer**| ID of the container (Release, Test Cycle or Test Suite)  Input 0 (zero) to move the test run to under root  &lt;strong&gt;Important:&lt;/strong&gt; If you use the request parameters, the request body will be ignored. That means the test run is being moved but it will not be updated with the properties specify in the request body | [optional] 
 **parent_type** | **String**| Type of the container. Valid values include &lt;em&gt;root&lt;/em&gt;, &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; and &lt;em&gt;test-suite&lt;/em&gt; | [optional] 

### Return type

[**TestRunWithCustomFieldResource**](TestRunWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_comment**
> CommentResource update_comment(project_id, id_or_key, comment_id, body)

Updates a Comment of a Test Run

To update a Comment of a Test Run  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestrunApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Run

comment_id = 789 # Integer | ID of the comment which you want to update.

body = SwaggerClient::CommentResource.new # CommentResource | The Comment's updated content


begin
  #Updates a Comment of a Test Run
  result = api_instance.update_comment(project_id, id_or_key, comment_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestrunApi->update_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Run | 
 **comment_id** | **Integer**| ID of the comment which you want to update. | 
 **body** | [**CommentResource**](CommentResource.md)| The Comment&#39;s updated content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



