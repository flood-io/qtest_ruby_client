# SwaggerClient::TestcycleApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cycle**](TestcycleApi.md#create_cycle) | **POST** /api/v3/projects/{projectId}/test-cycles | Create a Test Cycle
[**delete_cycle**](TestcycleApi.md#delete_cycle) | **DELETE** /api/v3/projects/{projectId}/test-cycles/{testCycleId} | Deletes a Test Cycle
[**get_test_cycle**](TestcycleApi.md#get_test_cycle) | **GET** /api/v3/projects/{projectId}/test-cycles/{testCycleId} | Gets a Test Cycle
[**get_test_cycles**](TestcycleApi.md#get_test_cycles) | **GET** /api/v3/projects/{projectId}/test-cycles | Gets multiple Test Cycles
[**update_cycle**](TestcycleApi.md#update_cycle) | **PUT** /api/v3/projects/{projectId}/test-cycles/{testCycleId} | Updates a Test Cycle


# **create_cycle**
> TestCycleResource create_cycle(project_id, body, opts)

Create a Test Cycle

To create a Test Cycle  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcycleApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::TestCycleResource.new # TestCycleResource | Given resource to create a test cycle.

opts = { 
  parent_id: 789, # Integer | ID of the Release or Test Cycle under which the newly created Test Cycle will be located.   Use 0 (zero) to create the Test Cycle under the root
  parent_type: "parent_type_example" # String | The artifact type of the parent folder. Valid values include <em>release</em>, <em>test-cycle</em> or <em>root</em>
}

begin
  #Create a Test Cycle
  result = api_instance.create_cycle(project_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcycleApi->create_cycle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**TestCycleResource**](TestCycleResource.md)| Given resource to create a test cycle. | 
 **parent_id** | **Integer**| ID of the Release or Test Cycle under which the newly created Test Cycle will be located.   Use 0 (zero) to create the Test Cycle under the root | [optional] 
 **parent_type** | **String**| The artifact type of the parent folder. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt; | [optional] 

### Return type

[**TestCycleResource**](TestCycleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_cycle**
> Message delete_cycle(project_id, test_cycle_id, opts)

Deletes a Test Cycle

To delete a Test Cycle  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcycleApi.new

project_id = 789 # Integer | ID of the project

test_cycle_id = 789 # Integer | ID of the Test Cycle which needs to be deleted.

opts = { 
  force: true # BOOLEAN | The Test Cycle can only be deleted if it contains no children. Specify <em>force=true</em> to delete the Test Cycle and its children
}

begin
  #Deletes a Test Cycle
  result = api_instance.delete_cycle(project_id, test_cycle_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcycleApi->delete_cycle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_cycle_id** | **Integer**| ID of the Test Cycle which needs to be deleted. | 
 **force** | **BOOLEAN**| The Test Cycle can only be deleted if it contains no children. Specify &lt;em&gt;force&#x3D;true&lt;/em&gt; to delete the Test Cycle and its children | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_cycle**
> TestCycleResource get_test_cycle(project_id, test_cycle_id, opts)

Gets a Test Cycle

To retrieve a Test Cycle  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcycleApi.new

project_id = 789 # Integer | ID of the project

test_cycle_id = 789 # Integer | ID of the Test Cycle which you want to retrieve.

opts = { 
  expand: "expand_example" # String | Specify <em>expand=descendants</em> to include its sub and grand-sub Test Cycles and Test Suites in the response
}

begin
  #Gets a Test Cycle
  result = api_instance.get_test_cycle(project_id, test_cycle_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcycleApi->get_test_cycle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_cycle_id** | **Integer**| ID of the Test Cycle which you want to retrieve. | 
 **expand** | **String**| Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to include its sub and grand-sub Test Cycles and Test Suites in the response | [optional] 

### Return type

[**TestCycleResource**](TestCycleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_test_cycles**
> Array&lt;TestCycleResource&gt; get_test_cycles(project_id, opts)

Gets multiple Test Cycles

To retrieve Test Cycles which are located directly under root or a Release/Test Cycle

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

api_instance = SwaggerClient::TestcycleApi.new

project_id = 789 # Integer | ID of the project

opts = { 
  parent_id: 789, # Integer | ID of the Release or Test Cycle which directly contains the Test Cycles you are retrieving. Input 0 (zero) to get Test Cycles directly under root
  parent_type: "parent_type_example", # String | The artifact type of the parent folder. Valid values include <em>release</em>, <em>test-cycle</em> or <em>root</em>
  expand: "expand_example" # String | Specify <em>expand=descendants</em> to retrieve the Test Cycles' sub and grand-sub Cycles/Suites
}

begin
  #Gets multiple Test Cycles
  result = api_instance.get_test_cycles(project_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcycleApi->get_test_cycles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **parent_id** | **Integer**| ID of the Release or Test Cycle which directly contains the Test Cycles you are retrieving. Input 0 (zero) to get Test Cycles directly under root | [optional] 
 **parent_type** | **String**| The artifact type of the parent folder. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt; | [optional] 
 **expand** | **String**| Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to retrieve the Test Cycles&#39; sub and grand-sub Cycles/Suites | [optional] 

### Return type

[**Array&lt;TestCycleResource&gt;**](TestCycleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_cycle**
> TestCycleResource update_cycle(project_id, test_cycle_id, body, opts)

Updates a Test Cycle

To update a Test Cycle or move it to another container  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::TestcycleApi.new

project_id = 789 # Integer | ID of the project

test_cycle_id = 789 # Integer | ID of the Test Cycle which needs to be updated.

body = SwaggerClient::TestCycleResource.new # TestCycleResource | The Test Cycle's updated properties

opts = { 
  parent_id: 789, # Integer | ID of a Release or parent Test Cycle which the updated Test Cycle will be moved to. Input 0 (zero) to move the Test Cycle to under root
  parent_type: "parent_type_example" # String | The artifact type of the parent folder to which the Test Cycle will be moved to. Valid values include <em>release</em>, <em>test-cycle</em> or <em>root</em>
}

begin
  #Updates a Test Cycle
  result = api_instance.update_cycle(project_id, test_cycle_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestcycleApi->update_cycle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **test_cycle_id** | **Integer**| ID of the Test Cycle which needs to be updated. | 
 **body** | [**TestCycleResource**](TestCycleResource.md)| The Test Cycle&#39;s updated properties | 
 **parent_id** | **Integer**| ID of a Release or parent Test Cycle which the updated Test Cycle will be moved to. Input 0 (zero) to move the Test Cycle to under root | [optional] 
 **parent_type** | **String**| The artifact type of the parent folder to which the Test Cycle will be moved to. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt; | [optional] 

### Return type

[**TestCycleResource**](TestCycleResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



