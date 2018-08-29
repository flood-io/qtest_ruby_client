# SwaggerClient::TestcaseApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](TestcaseApi.md#add_comment) | **POST** /api/v3/projects/{projectId}/test-cases/{idOrKey}/comments | Adds a Comment to a Test Case
[**add_test_step**](TestcaseApi.md#add_test_step) | **POST** /api/v3/projects/{projectId}/test-cases/{testCaseId}/test-steps | Creates a Test Step
[**approve_test_case**](TestcaseApi.md#approve_test_case) | **PUT** /api/v3/projects/{projectId}/test-cases/{testCaseId}/approve | Approves a Test Case
[**create_test_case**](TestcaseApi.md#create_test_case) | **POST** /api/v3/projects/{projectId}/test-cases | Creates a Test Case
[**delete_comment**](TestcaseApi.md#delete_comment) | **DELETE** /api/v3/projects/{projectId}/test-cases/{idOrKey}/comments/{commentId} | Deletes a Comment of a Test Case
[**delete_test_case**](TestcaseApi.md#delete_test_case) | **DELETE** /api/v3/projects/{projectId}/test-cases/{testCaseId} | Deletes a Test Case
[**delete_test_step**](TestcaseApi.md#delete_test_step) | **DELETE** /api/v3/projects/{projectId}/test-cases/{testCaseId}/test-steps/{stepId} | Deletes a Test Step
[**get_comment**](TestcaseApi.md#get_comment) | **GET** /api/v3/projects/{projectId}/test-cases/{idOrKey}/comments/{commentId} | Gets a Comment of a Test Case
[**get_comments**](TestcaseApi.md#get_comments) | **GET** /api/v3/projects/{projectId}/test-cases/{idOrKey}/comments | Gets all Comments of a Test Case
[**get_test_case**](TestcaseApi.md#get_test_case) | **GET** /api/v3/projects/{projectId}/test-cases/{testCaseId} | Gets a Test Case
[**get_test_case_0**](TestcaseApi.md#get_test_case_0) | **GET** /api/v3/projects/{projectId}/test-cases/{testCaseId}/versions/{versionId} | Gets a version of a Test Case
[**get_test_cases**](TestcaseApi.md#get_test_cases) | **GET** /api/v3/projects/{projectId}/test-cases | Gets multiple Test Cases
[**get_test_step**](TestcaseApi.md#get_test_step) | **GET** /api/v3/projects/{projectId}/test-cases/{testCaseId}/test-steps/{stepId} | Gets a Test Step
[**get_test_steps**](TestcaseApi.md#get_test_steps) | **GET** /api/v3/projects/{projectId}/test-cases/{testCaseId}/test-steps | Gets Test Steps of a Test Case
[**get_test_steps_by_version**](TestcaseApi.md#get_test_steps_by_version) | **GET** /api/v3/projects/{projectId}/test-cases/{testCaseId}/versions/{versionId}/test-steps | Gets Test Steps of a Test Case version
[**get_versions**](TestcaseApi.md#get_versions) | **GET** /api/v3/projects/{projectId}/test-cases/{testCaseId}/versions | Gets all versions of a Test Case
[**update_comment**](TestcaseApi.md#update_comment) | **PUT** /api/v3/projects/{projectId}/test-cases/{idOrKey}/comments/{commentId} | Updates a Comment of a Test Case
[**update_test_case**](TestcaseApi.md#update_test_case) | **PUT** /api/v3/projects/{projectId}/test-cases/{testCaseId} | Updates a Test Case
[**update_test_step**](TestcaseApi.md#update_test_step) | **PUT** /api/v3/projects/{projectId}/test-cases/{testCaseId}/test-steps/{stepId} | Update a Test Step


# **add_comment**
> CommentResource add_comment(project_id, id_or_key, body)

Adds a Comment to a Test Case

To add a Comment to a Test Case  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Case

body = SwaggerClient::CommentResource.new # CommentResource | The comment's properties and its content


begin
  #Adds a Comment to a Test Case
  result = api_instance.add_comment(project_id, id_or_key, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->add_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Case | 
 **body** | [**CommentResource**](CommentResource.md)| The comment&#39;s properties and its content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **add_test_step**
> TestStepResource add_test_step(project_id, test_case_id, body)

Creates a Test Step

To add a Test Step to a Test Case's latest version  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

body = SwaggerClient::TestStepResource.new # TestStepResource | Given resource to add a test step.


begin
  #Creates a Test Step
  result = api_instance.add_test_step(project_id, test_case_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->add_test_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **body** | [**TestStepResource**](TestStepResource.md)| Given resource to add a test step. | 

### Return type

[**TestStepResource**](TestStepResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **approve_test_case**
> TestCaseWithCustomFieldResource approve_test_case(project_id, test_case_id)

Approves a Test Case

To approve a Test Case  <strong>qTest Manager version:</strong> 7.4+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case


begin
  #Approves a Test Case
  result = api_instance.approve_test_case(project_id, test_case_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->approve_test_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 

### Return type

[**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_test_case**
> TestCaseWithCustomFieldResource create_test_case(project_id, body, opts)

Creates a Test Case

To create a Test Case  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::TestCaseWithCustomFieldResource.new # TestCaseWithCustomFieldResource | Test Case properties, Test Steps, Attachments and other information to create a Test Case.  If <em>parent_id</em> is omitted, the Test Case will be created under \"Created via API\" Module

opts = { 
  agent_id: "agent_id_example" # String | 
}

begin
  #Creates a Test Case
  result = api_instance.create_test_case(project_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->create_test_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)| Test Case properties, Test Steps, Attachments and other information to create a Test Case.  If &lt;em&gt;parent_id&lt;/em&gt; is omitted, the Test Case will be created under \&quot;Created via API\&quot; Module | 
 **agent_id** | **String**|  | [optional] 

### Return type

[**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_comment**
> Object delete_comment(project_id, id_or_key, comment_id)

Deletes a Comment of a Test Case

To delete a comment of a Test Case  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Case

comment_id = 789 # Integer | ID of the comment.


begin
  #Deletes a Comment of a Test Case
  result = api_instance.delete_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->delete_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Case | 
 **comment_id** | **Integer**| ID of the comment. | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_test_case**
> delete_test_case(project_id, test_case_id)

Deletes a Test Case

To delete Test Case  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case which needs to be deleted.


begin
  #Deletes a Test Case
  api_instance.delete_test_case(project_id, test_case_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->delete_test_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case which needs to be deleted. | 

### Return type

nil (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_test_step**
> Object delete_test_step(project_id, test_case_id, step_id, opts)

Deletes a Test Step

To delete a test step of a Test Case  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

step_id = 789 # Integer | ID of the Test Step

opts = { 
  update_version: true # BOOLEAN | If you specify updateVersion=true, the test case version will be updated when the test step deleted.
}

begin
  #Deletes a Test Step
  result = api_instance.delete_test_step(project_id, test_case_id, step_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->delete_test_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **step_id** | **Integer**| ID of the Test Step | 
 **update_version** | **BOOLEAN**| If you specify updateVersion&#x3D;true, the test case version will be updated when the test step deleted. | [optional] 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comment**
> CommentResource get_comment(project_id, id_or_key, comment_id)

Gets a Comment of a Test Case

To retrieve a comment of a Test Case  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Case

comment_id = 789 # Integer | ID of the comment.


begin
  #Gets a Comment of a Test Case
  result = api_instance.get_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Case | 
 **comment_id** | **Integer**| ID of the comment. | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comments**
> PagedResourceCommentResource get_comments(project_id, id_or_key, opts)

Gets all Comments of a Test Case

To retrieve all comments of a Test Case  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Case whose comments you want to retrieve

opts = { 
  page: 1, # Integer | By default the first page is returned but you can specify any page number to retrieve objects
  page_size: 100 # Integer | The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
}

begin
  #Gets all Comments of a Test Case
  result = api_instance.get_comments(project_id, id_or_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Case whose comments you want to retrieve | 
 **page** | **Integer**| By default the first page is returned but you can specify any page number to retrieve objects | [optional] [default to 1]
 **page_size** | **Integer**| The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter | [optional] [default to 100]

### Return type

[**PagedResourceCommentResource**](PagedResourceCommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_case**
> TestCaseWithCustomFieldResource get_test_case(project_id, test_case_id, opts)

Gets a Test Case

To retrieve a Test Case  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

opts = { 
  version_id: 789, # Integer | ID of the Test Case version
  expand: "expand_example" # String | By default, Test Steps are excluded from the response. Specify <em>expand=teststep</em> to include Test Steps
}

begin
  #Gets a Test Case
  result = api_instance.get_test_case(project_id, test_case_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_test_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **version_id** | **Integer**| ID of the Test Case version | [optional] 
 **expand** | **String**| By default, Test Steps are excluded from the response. Specify &lt;em&gt;expand&#x3D;teststep&lt;/em&gt; to include Test Steps | [optional] 

### Return type

[**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_case_0**
> TestCaseWithCustomFieldResource get_test_case_0(project_id, test_case_id, version_id)

Gets a version of a Test Case

To retrieve a specific version of a Test Case  <strong>qTest Manager version:</strong> 4+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

version_id = 789 # Integer | ID of the Test Case version


begin
  #Gets a version of a Test Case
  result = api_instance.get_test_case_0(project_id, test_case_id, version_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_test_case_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **version_id** | **Integer**| ID of the Test Case version | 

### Return type

[**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_cases**
> Array&lt;TestCaseWithCustomFieldResource&gt; get_test_cases(project_id, page, size, opts)

Gets multiple Test Cases

To retrieve all Test Cases or Test Cases which are located directly under a Module

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

page = 1 # Integer | By default the first page is returned. However, you can specify any page number to retrieve test cases.

size = 20 # Integer | The result is paginated. By the default, the number of requirements in each page is 20.  You can specify your custom number in this parameter.

opts = { 
  parent_id: 789, # Integer | Module ID
  expand_props: true, # BOOLEAN | By default, Test Case properties are included in the response. specify <em>expandProps=false</em> to exclude them
  expand_steps: true # BOOLEAN | By default, Test Steps are excluded from the response body. Input <em>expandSteps=true</em> to include Test Steps
}

begin
  #Gets multiple Test Cases
  result = api_instance.get_test_cases(project_id, page, size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_test_cases: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **page** | **Integer**| By default the first page is returned. However, you can specify any page number to retrieve test cases. | [default to 1]
 **size** | **Integer**| The result is paginated. By the default, the number of requirements in each page is 20.  You can specify your custom number in this parameter. | [default to 20]
 **parent_id** | **Integer**| Module ID | [optional] 
 **expand_props** | **BOOLEAN**| By default, Test Case properties are included in the response. specify &lt;em&gt;expandProps&#x3D;false&lt;/em&gt; to exclude them | [optional] 
 **expand_steps** | **BOOLEAN**| By default, Test Steps are excluded from the response body. Input &lt;em&gt;expandSteps&#x3D;true&lt;/em&gt; to include Test Steps | [optional] 

### Return type

[**Array&lt;TestCaseWithCustomFieldResource&gt;**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_step**
> TestStepResource get_test_step(project_id, test_case_id, step_id)

Gets a Test Step

To retrieve a Test Step of a Test Case's latest version  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

step_id = 789 # Integer | ID of the test step.


begin
  #Gets a Test Step
  result = api_instance.get_test_step(project_id, test_case_id, step_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_test_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **step_id** | **Integer**| ID of the test step. | 

### Return type

[**TestStepResource**](TestStepResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_steps**
> Array&lt;TestStepResource&gt; get_test_steps(project_id, test_case_id)

Gets Test Steps of a Test Case

To retrieve all Test Steps of a Test Case's latest version  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case


begin
  #Gets Test Steps of a Test Case
  result = api_instance.get_test_steps(project_id, test_case_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_test_steps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 

### Return type

[**Array&lt;TestStepResource&gt;**](TestStepResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_steps_by_version**
> Array&lt;TestStepResource&gt; get_test_steps_by_version(project_id, test_case_id, version_id, opts)

Gets Test Steps of a Test Case version

To retrieve all Test Steps of a specific Test Case version

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

version_id = 789 # Integer | ID of the Test Case version

opts = { 
  expand: "expand_example" # String | Specify <em>expand=calledteststep</em> to include Test Steps of the called Test Cases
}

begin
  #Gets Test Steps of a Test Case version
  result = api_instance.get_test_steps_by_version(project_id, test_case_id, version_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_test_steps_by_version: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **version_id** | **Integer**| ID of the Test Case version | 
 **expand** | **String**| Specify &lt;em&gt;expand&#x3D;calledteststep&lt;/em&gt; to include Test Steps of the called Test Cases | [optional] 

### Return type

[**Array&lt;TestStepResource&gt;**](TestStepResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_versions**
> Array&lt;TestCaseWithCustomFieldResource&gt; get_versions(project_id, test_case_id)

Gets all versions of a Test Case

To retrieve all versions of a Test Case  <strong>qTest Manager version:</strong> 7.4+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the test case


begin
  #Gets all versions of a Test Case
  result = api_instance.get_versions(project_id, test_case_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->get_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the test case | 

### Return type

[**Array&lt;TestCaseWithCustomFieldResource&gt;**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_comment**
> CommentResource update_comment(project_id, id_or_key, comment_id, body)

Updates a Comment of a Test Case

To modify a comment of a Test Case  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Test Case

comment_id = 789 # Integer | ID of the comment.

body = SwaggerClient::CommentResource.new # CommentResource | The comment's updated content


begin
  #Updates a Comment of a Test Case
  result = api_instance.update_comment(project_id, id_or_key, comment_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->update_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Test Case | 
 **comment_id** | **Integer**| ID of the comment. | 
 **body** | [**CommentResource**](CommentResource.md)| The comment&#39;s updated content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_test_case**
> TestCaseWithCustomFieldResource update_test_case(project_id, test_case_id, body)

Updates a Test Case

To update a Test Case  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case which needs to be updated.

body = SwaggerClient::TestCaseWithCustomFieldResource.new # TestCaseWithCustomFieldResource | Test Case properties, Test Steps and other information to update the Test Case


begin
  #Updates a Test Case
  result = api_instance.update_test_case(project_id, test_case_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->update_test_case: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case which needs to be updated. | 
 **body** | [**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)| Test Case properties, Test Steps and other information to update the Test Case | 

### Return type

[**TestCaseWithCustomFieldResource**](TestCaseWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_test_step**
> TestStepResource update_test_step(project_id, test_case_id, step_id, body)

Update a Test Step

To update a Test Step of a Test Case's latest version  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcaseApi.new

project_id = 789 # Integer | ID of the project

test_case_id = 789 # Integer | ID of the Test Case

step_id = 789 # Integer | ID of the Test Step

body = SwaggerClient::TestStepResource.new # TestStepResource | Updated content of the Test Step


begin
  #Update a Test Step
  result = api_instance.update_test_step(project_id, test_case_id, step_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcaseApi->update_test_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_case_id** | **Integer**| ID of the Test Case | 
 **step_id** | **Integer**| ID of the Test Step | 
 **body** | [**TestStepResource**](TestStepResource.md)| Updated content of the Test Step | 

### Return type

[**TestStepResource**](TestStepResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



