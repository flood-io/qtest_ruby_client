# SwaggerClient::AttachmentApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](AttachmentApi.md#delete) | **DELETE** /api/v3/projects/{projectId}/{objectType}/{objectId}/blob-handles/{blobHandleId} | Deletes an Attachment from an Object
[**get_attachment**](AttachmentApi.md#get_attachment) | **GET** /api/v3/projects/{projectId}/{objectType}/{objectId}/attachments/{attachmentId} | Gets an Attachment of an Object
[**get_attachments_of**](AttachmentApi.md#get_attachments_of) | **GET** /api/v3/projects/{projectId}/{objectType}/{objectId}/attachments | Gets all Attachments of an Object
[**search**](AttachmentApi.md#search) | **GET** /api/v3/projects/{projectId}/attachments | Searches for Attachments
[**upload**](AttachmentApi.md#upload) | **POST** /api/v3/projects/{projectId}/{objectType}/{objectId}/blob-handles | Uploads an Attachment to an Object


# **delete**
> Message delete(project_id, blob_handle_id, object_type, object_id)

Deletes an Attachment from an Object

To delete an Attachment from a Release, Build, Requirement, Test Case, Test Log, Test Step or Defect  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::AttachmentApi.new

project_id = 789 # Integer | ID of the project

blob_handle_id = 789 # Integer | ID of the Attachment

object_type = "object_type_example" # String | Valid values include releases, builds, requirements, test-cases, test-logs, test-steps or defects  <strong>qTest Manager version:</strong> 4+

object_id = 789 # Integer | ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)


begin
  #Deletes an Attachment from an Object
  result = api_instance.delete(project_id, blob_handle_id, object_type, object_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **blob_handle_id** | **Integer**| ID of the Attachment | 
 **object_type** | **String**| Valid values include releases, builds, requirements, test-cases, test-logs, test-steps or defects  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+ | 
 **object_id** | **Integer**| ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect) | 

### Return type

[**Message**](Message.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_attachment**
> OutputStream get_attachment(project_id, attachment_id, object_type, object_id)

Gets an Attachment of an Object

To retrieve an Attachment from a Release, Build, Requirement, Test Case, Test Log, Test Step or Defect

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

api_instance = SwaggerClient::AttachmentApi.new

project_id = 789 # Integer | ID of the project

attachment_id = 789 # Integer | ID of attachment

object_type = "object_type_example" # String | Valid values include <em>release</em>, <em>build</em>, <em>requirements</em>, <em>test-cases</em>, <em>test-logs</em>, <em>test-steps</em>, or <em>defects</em>

object_id = 789 # Integer | ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)


begin
  #Gets an Attachment of an Object
  result = api_instance.get_attachment(project_id, attachment_id, object_type, object_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentApi->get_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **attachment_id** | **Integer**| ID of attachment | 
 **object_type** | **String**| Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;build&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;, &lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt;, or &lt;em&gt;defects&lt;/em&gt; | 
 **object_id** | **Integer**| ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect) | 

### Return type

[**OutputStream**](OutputStream.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_attachments_of**
> Array&lt;AttachmentResource&gt; get_attachments_of(project_id, object_type, object_id)

Gets all Attachments of an Object

To retrieve all Attachments of a Release, Build, Requirement, Test Case, Test Log, Test Step or Defect

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

api_instance = SwaggerClient::AttachmentApi.new

project_id = 789 # Integer | ID of the project

object_type = "object_type_example" # String | Valid values include <em>release</em>, <em>build</em>, <em>requirements</em>, <em>test-cases</em>, <em>test-logs</em>, <em>test-steps</em>, or <em>defects</em>

object_id = 789 # Integer | ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)


begin
  #Gets all Attachments of an Object
  result = api_instance.get_attachments_of(project_id, object_type, object_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentApi->get_attachments_of: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **object_type** | **String**| Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;build&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;, &lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt;, or &lt;em&gt;defects&lt;/em&gt; | 
 **object_id** | **Integer**| ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect) | 

### Return type

[**Array&lt;AttachmentResource&gt;**](AttachmentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **search**
> PagedResourceAttachmentResource search(project_id, type, opts)

Searches for Attachments

To query for attachments of <em>Releases</em>, <em>Builds</em>, <em>Requirements</em>, <em>Test Cases</em>, <em>Test Logs</em>, <em>Test Steps</em> or <em>Defects</em>

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

api_instance = SwaggerClient::AttachmentApi.new

project_id = 789 # Integer | ID of the project

type = "type_example" # String | Its valid values include <em>releases</em>, <em>builds</em>, <em>requirements</em>, <em>test-cases</em>, <em>test-steps</em>, <em>test-logs</em> or <em>defects</em>

opts = { 
  ids: [56], # Array<Integer> | List of object IDs (of the same type as specified in the parameter above), separated by commas
  author: 789, # Integer | ID of the user who created the attachment
  created_date: "created_date_example", # String | Its format is: <strong>{operator} {createdDate in timestamp or UTC}</strong>  The <em>operator</em> can be one of the following values:  <b>lt</b>: less than the given date  <b>gt</b>: greater than given date  <b>eq</b>: equal to the given date  <b>le</b>: less than or equal to the given date  <b>ge</b>: greater then or equal to the given date
  page_size: 100, # Integer | The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
  page: 1 # Integer | By default, the first page is returned but you can specify any page number to retrieve attachments
}

begin
  #Searches for Attachments
  result = api_instance.search(project_id, type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **type** | **String**| Its valid values include &lt;em&gt;releases&lt;/em&gt;, &lt;em&gt;builds&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;, &lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt; or &lt;em&gt;defects&lt;/em&gt; | 
 **ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of object IDs (of the same type as specified in the parameter above), separated by commas | [optional] 
 **author** | **Integer**| ID of the user who created the attachment | [optional] 
 **created_date** | **String**| Its format is: &lt;strong&gt;{operator} {createdDate in timestamp or UTC}&lt;/strong&gt;  The &lt;em&gt;operator&lt;/em&gt; can be one of the following values:  &lt;b&gt;lt&lt;/b&gt;: less than the given date  &lt;b&gt;gt&lt;/b&gt;: greater than given date  &lt;b&gt;eq&lt;/b&gt;: equal to the given date  &lt;b&gt;le&lt;/b&gt;: less than or equal to the given date  &lt;b&gt;ge&lt;/b&gt;: greater then or equal to the given date | [optional] 
 **page_size** | **Integer**| The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter | [optional] [default to 100]
 **page** | **Integer**| By default, the first page is returned but you can specify any page number to retrieve attachments | [optional] [default to 1]

### Return type

[**PagedResourceAttachmentResource**](PagedResourceAttachmentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **upload**
> AttachmentResource upload(project_id, object_type, object_id, file_name, content_type, body)

Uploads an Attachment to an Object

To upload an Attachment to a Release, Build, Requirement, Test Case, Test Log, Test Step, or Defect

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

api_instance = SwaggerClient::AttachmentApi.new

project_id = 789 # Integer | ID of the project

object_type = "object_type_example" # String | Valid values include releases, builds, requirements, test-cases, test-logs, test-steps or defects  <strong>qTest Manager version:</strong> 4+

object_id = 789 # Integer | ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)

file_name = "file_name_example" # String | 

content_type = "content_type_example" # String | 

body = "B" # String | 


begin
  #Uploads an Attachment to an Object
  result = api_instance.upload(project_id, object_type, object_id, file_name, content_type, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttachmentApi->upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **object_type** | **String**| Valid values include releases, builds, requirements, test-cases, test-logs, test-steps or defects  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+ | 
 **object_id** | **Integer**| ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect) | 
 **file_name** | **String**|  | 
 **content_type** | **String**|  | 
 **body** | **String**|  | 

### Return type

[**AttachmentResource**](AttachmentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



