# SwaggerClient::TestsuiteApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_test_suite**](TestsuiteApi.md#create_test_suite) | **POST** /api/v3/projects/{projectId}/test-suites | Creates a Test Suite
[**delete**](TestsuiteApi.md#delete) | **DELETE** /api/v3/projects/{projectId}/test-suites/{testSuiteId} | Deletes a Test Suite
[**get**](TestsuiteApi.md#get) | **GET** /api/v3/projects/{projectId}/test-suites | Gets multiple Test Suite
[**get_test_suite**](TestsuiteApi.md#get_test_suite) | **GET** /api/v3/projects/{projectId}/test-suites/{testSuiteId} | Gets a Test Suite
[**update_test_suite**](TestsuiteApi.md#update_test_suite) | **PUT** /api/v3/projects/{projectId}/test-suites/{testSuiteId} | Updates a Test Suite


# **create_test_suite**
> TestSuiteWithCustomFieldResource create_test_suite(project_id, body, opts)

Creates a Test Suite

To create a new Test Suite  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestsuiteApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::TestSuiteWithCustomFieldResource.new # TestSuiteWithCustomFieldResource | The Test Suite's properties

opts = { 
  parent_id: 789, # Integer | ID of the Release or Test Cycle under which the newly created Test Suites are located. Input 0 (zero) to create Test Suites directly under root
  parent_type: "parent_type_example" # String | Arifact type of the container. Valid values include <em>release</em>, <em>test-cycle</em> and <em>root</em>
}

begin
  #Creates a Test Suite
  result = api_instance.create_test_suite(project_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestsuiteApi->create_test_suite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**TestSuiteWithCustomFieldResource**](TestSuiteWithCustomFieldResource.md)| The Test Suite&#39;s properties | 
 **parent_id** | **Integer**| ID of the Release or Test Cycle under which the newly created Test Suites are located. Input 0 (zero) to create Test Suites directly under root | [optional] 
 **parent_type** | **String**| Arifact type of the container. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; and &lt;em&gt;root&lt;/em&gt; | [optional] 

### Return type

[**TestSuiteWithCustomFieldResource**](TestSuiteWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete**
> Object delete(project_id, test_suite_id)

Deletes a Test Suite

To delete a Test Suite  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestsuiteApi.new

project_id = 789 # Integer | ID of the project

test_suite_id = 789 # Integer | ID of the Test Suite.


begin
  #Deletes a Test Suite
  result = api_instance.delete(project_id, test_suite_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestsuiteApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_suite_id** | **Integer**| ID of the Test Suite. | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get**
> Array&lt;TestSuiteWithCustomFieldResource&gt; get(project_id, opts)

Gets multiple Test Suite

To retrieve Test Suites which located under a parent Release, Test Cycle or root  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestsuiteApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  parent_id: 789, # Integer | ID of the Release or Test Cycle under which the Test Suites are located. Input 0 (zero) to get Test Suites directly under root
  parent_type: "parent_type_example" # String | Arifact type of the container. Valid values include <em>release</em>, <em>test-cycle</em> and <em>root</em>
}

begin
  #Gets multiple Test Suite
  result = api_instance.get(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestsuiteApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **parent_id** | **Integer**| ID of the Release or Test Cycle under which the Test Suites are located. Input 0 (zero) to get Test Suites directly under root | [optional] 
 **parent_type** | **String**| Arifact type of the container. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; and &lt;em&gt;root&lt;/em&gt; | [optional] 

### Return type

[**Array&lt;TestSuiteWithCustomFieldResource&gt;**](TestSuiteWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_suite**
> TestSuiteWithCustomFieldResource get_test_suite(project_id, test_suite_id)

Gets a Test Suite

To retrieve a Test Suite  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestsuiteApi.new

project_id = 789 # Integer | ID of the project

test_suite_id = 789 # Integer | ID of the Test Suite


begin
  #Gets a Test Suite
  result = api_instance.get_test_suite(project_id, test_suite_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestsuiteApi->get_test_suite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_suite_id** | **Integer**| ID of the Test Suite | 

### Return type

[**TestSuiteWithCustomFieldResource**](TestSuiteWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_test_suite**
> TestSuiteWithCustomFieldResource update_test_suite(project_id, test_suite_id, body, opts)

Updates a Test Suite

To update an existing Test Suite or to move it to other container  <strong>Important:</strong> If you use the request parameters <em>parentId</em> and <em>parentType</em>, the request body will be ignore.   That means the Test Suite is being moved but it will not be updated with the properties specify in the request body

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

api_instance = SwaggerClient::TestsuiteApi.new

project_id = 789 # Integer | ID of the project

test_suite_id = 789 # Integer | ID of the Test Suite

body = SwaggerClient::TestSuiteWithCustomFieldResource.new # TestSuiteWithCustomFieldResource | The Test Suite's updated properties

opts = { 
  parent_id: 789, # Integer | ID of the Release or Test Cycle which the Test Suite will be moved to. Input 0 (zero) to move the Test Suite to under root
  parent_type: "parent_type_example", # String | Artifact type of the parent container. Valid values include <em>release</em>, <em>test-cycle</em> and <em>root</em>
  no_email: true # BOOLEAN | 
}

begin
  #Updates a Test Suite
  result = api_instance.update_test_suite(project_id, test_suite_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestsuiteApi->update_test_suite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_suite_id** | **Integer**| ID of the Test Suite | 
 **body** | [**TestSuiteWithCustomFieldResource**](TestSuiteWithCustomFieldResource.md)| The Test Suite&#39;s updated properties | 
 **parent_id** | **Integer**| ID of the Release or Test Cycle which the Test Suite will be moved to. Input 0 (zero) to move the Test Suite to under root | [optional] 
 **parent_type** | **String**| Artifact type of the parent container. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; and &lt;em&gt;root&lt;/em&gt; | [optional] 
 **no_email** | **BOOLEAN**|  | [optional] 

### Return type

[**TestSuiteWithCustomFieldResource**](TestSuiteWithCustomFieldResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



