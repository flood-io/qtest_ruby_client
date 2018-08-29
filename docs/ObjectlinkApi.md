# SwaggerClient::ObjectlinkApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](ObjectlinkApi.md#find) | **GET** /api/v3/projects/{projectId}/linked-artifacts | Gets associated objects of given objects
[**link_artifacts**](ObjectlinkApi.md#link_artifacts) | **POST** /api/v3/projects/{projectId}/{objectType}/{objectId}/link | Creates links between objects
[**unlink_artifacts**](ObjectlinkApi.md#unlink_artifacts) | **DELETE** /api/v3/projects/{projectId}/{objectType}/{objectId}/link | Removes links between objects


# **find**
> Array&lt;LinkedArtifactContainer&gt; find(project_id, type, opts)

Gets associated objects of given objects

To retrieve associated objects of given objects  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::ObjectlinkApi.new

project_id = 789 # Integer | ID of the project

type = "type_example" # String | Valid values include <em>releases</em>, <em>builds</em>, <em>requirements</em>,<em>test-cases</em>, <em>test-runs</em>, <em>test-logs</em>, <em>test-steps</em> or <em>defects</em>

opts = { 
  ids: [56], # Array<Integer> | IDs of objects whose links you want to retrieve
  pids: ["pids_example"], # Array<String> | In case of <em>type=defects</em>, you can specify a list of external defect id in this parameters.  It cannot be used for other types
  t_rof_sharedprojects: true # BOOLEAN | 
}

begin
  #Gets associated objects of given objects
  result = api_instance.find(project_id, type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ObjectlinkApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **type** | **String**| Valid values include &lt;em&gt;releases&lt;/em&gt;, &lt;em&gt;builds&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;,&lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-runs&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt; or &lt;em&gt;defects&lt;/em&gt; | 
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of objects whose links you want to retrieve | [optional] 
 **pids** | [**Array&lt;String&gt;**](String.md)| In case of &lt;em&gt;type&#x3D;defects&lt;/em&gt;, you can specify a list of external defect id in this parameters.  It cannot be used for other types | [optional] 
 **t_rof_sharedprojects** | **BOOLEAN**|  | [optional] 

### Return type

[**Array&lt;LinkedArtifactContainer&gt;**](LinkedArtifactContainer.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **link_artifacts**
> Array&lt;LinkedArtifactContainer&gt; link_artifacts(project_id, object_type, type, body, object_id)

Creates links between objects

To add associated objects to another object

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

api_instance = SwaggerClient::ObjectlinkApi.new

project_id = 789 # Integer | ID of the project

object_type = "object_type_example" # String | the object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases

type = "type_example" # String | The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects

body = [SwaggerClient::Array<Integer>.new] # Array<Integer> | A JSONArray of associated object IDs which are being added to the source object

object_id = 789 # Integer | ID of the source object


begin
  #Creates links between objects
  result = api_instance.link_artifacts(project_id, object_type, type, body, object_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ObjectlinkApi->link_artifacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **object_type** | **String**| the object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases | 
 **type** | **String**| The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects | 
 **body** | **Array&lt;Integer&gt;**| A JSONArray of associated object IDs which are being added to the source object | 
 **object_id** | **Integer**| ID of the source object | 

### Return type

[**Array&lt;LinkedArtifactContainer&gt;**](LinkedArtifactContainer.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **unlink_artifacts**
> Object unlink_artifacts(project_id, object_type, type, body, object_id)

Removes links between objects

To remove associated objects from another object

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

api_instance = SwaggerClient::ObjectlinkApi.new

project_id = 789 # Integer | ID of the project

object_type = "object_type_example" # String | The object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases

type = "type_example" # String | The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects

body = [SwaggerClient::Array<Integer>.new] # Array<Integer> | A JSONArray of associated object IDs which are being removed from the source object

object_id = 789 # Integer | ID of the source object


begin
  #Removes links between objects
  result = api_instance.unlink_artifacts(project_id, object_type, type, body, object_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ObjectlinkApi->unlink_artifacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **object_type** | **String**| The object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases | 
 **type** | **String**| The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects | 
 **body** | **Array&lt;Integer&gt;**| A JSONArray of associated object IDs which are being removed from the source object | 
 **object_id** | **Integer**| ID of the source object | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



