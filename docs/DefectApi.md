# SwaggerClient::DefectApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_comment**](DefectApi.md#add_comment) | **POST** /api/v3/projects/{projectId}/defects/{idOrKey}/comments | Adds a Comment to a Defect
[**delete_comment**](DefectApi.md#delete_comment) | **DELETE** /api/v3/projects/{projectId}/defects/{idOrKey}/comments/{commentId} | Deletes a Comment of a Defect
[**get_comment**](DefectApi.md#get_comment) | **GET** /api/v3/projects/{projectId}/defects/{idOrKey}/comments/{commentId} | Gets a Comment of a Defect
[**get_comments**](DefectApi.md#get_comments) | **GET** /api/v3/projects/{projectId}/defects/{idOrKey}/comments | Gets all Comments of a Defect
[**get_defect**](DefectApi.md#get_defect) | **GET** /api/v3/projects/{projectId}/defects/{defectId} | Gets a Defect
[**get_last_changed**](DefectApi.md#get_last_changed) | **GET** /api/v3/projects/{projectId}/defects/last-change | Gets recently updated Defects
[**submit_defect**](DefectApi.md#submit_defect) | **POST** /api/v3/projects/{projectId}/defects | Submit a Defect
[**update_comment**](DefectApi.md#update_comment) | **PUT** /api/v3/projects/{projectId}/defects/{idOrKey}/comments/{commentId} | Updates a Comment of a Defect
[**update_defect**](DefectApi.md#update_defect) | **PUT** /api/v3/projects/{projectId}/defects/{defectId} | Updates a Defect


# **add_comment**
> CommentResource add_comment(project_id, id_or_key, body)

Adds a Comment to a Defect

To add a Comment to a Defect  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Defect

body = SwaggerClient::CommentResource.new # CommentResource | The Comment's content


begin
  #Adds a Comment to a Defect
  result = api_instance.add_comment(project_id, id_or_key, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->add_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Defect | 
 **body** | [**CommentResource**](CommentResource.md)| The Comment&#39;s content | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_comment**
> Object delete_comment(project_id, id_or_key, comment_id)

Deletes a Comment of a Defect

To delete a specific Comment of a Defect  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Defect whose Comment you want to delete

comment_id = 789 # Integer | ID of the comment.


begin
  #Deletes a Comment of a Defect
  result = api_instance.delete_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->delete_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Defect whose Comment you want to delete | 
 **comment_id** | **Integer**| ID of the comment. | 

### Return type

**Object**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comment**
> CommentResource get_comment(project_id, id_or_key, comment_id)

Gets a Comment of a Defect

To retrieve a specific Comment of a Defect  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Defect whose comment you want to retrieve

comment_id = 789 # Integer | ID of the comment


begin
  #Gets a Comment of a Defect
  result = api_instance.get_comment(project_id, id_or_key, comment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->get_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Defect whose comment you want to retrieve | 
 **comment_id** | **Integer**| ID of the comment | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_comments**
> PagedResourceCommentResource get_comments(project_id, id_or_key, opts)

Gets all Comments of a Defect

To retrieve all Comments of a Defect  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the Defect whose comments you want to retrieve

opts = { 
  page: 1, # Integer | By default the first page is returned but you can specify any page number to retrieve objects
  page_size: 100 # Integer | The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
}

begin
  #Gets all Comments of a Defect
  result = api_instance.get_comments(project_id, id_or_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->get_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the Defect whose comments you want to retrieve | 
 **page** | **Integer**| By default the first page is returned but you can specify any page number to retrieve objects | [optional] [default to 1]
 **page_size** | **Integer**| The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter | [optional] [default to 100]

### Return type

[**PagedResourceCommentResource**](PagedResourceCommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_defect**
> DefectResource get_defect(project_id, defect_id)

Gets a Defect

To retrieve a Defect  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

defect_id = "defect_id_example" # String | ID of the defect.


begin
  #Gets a Defect
  result = api_instance.get_defect(project_id, defect_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->get_defect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **defect_id** | **String**| ID of the defect. | 

### Return type

[**DefectResource**](DefectResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_last_changed**
> Array&lt;DefectResource&gt; get_last_changed(project_id, start_time, opts)

Gets recently updated Defects

To retrieve Defects which have been recently updated after a specified time

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

start_time = "start_time_example" # String | The specified time since when the Defects have been updated. It needs to be URL encoded: <em>yyyy-MM-dd'T'HH:mm:ss.SSSZ</em> or <em>yyyy-MM-dd'T'HH:mm:ssZZ</em>

opts = { 
  end_time: "end_time_example", # String | Do not support at this time. Use the current time only.
  size: 20, # Integer | The result is paginated. By the default, the number of objects in each page is 100. You can specify your custom number in this parameter. The maximum page size is 999.
  page: 1 # Integer | By default the first page is returned but you can specify any page number to retrieve objects
}

begin
  #Gets recently updated Defects
  result = api_instance.get_last_changed(project_id, start_time, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->get_last_changed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **start_time** | **String**| The specified time since when the Defects have been updated. It needs to be URL encoded: &lt;em&gt;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ&lt;/em&gt; or &lt;em&gt;yyyy-MM-dd&#39;T&#39;HH:mm:ssZZ&lt;/em&gt; | 
 **end_time** | **String**| Do not support at this time. Use the current time only. | [optional] 
 **size** | **Integer**| The result is paginated. By the default, the number of objects in each page is 100. You can specify your custom number in this parameter. The maximum page size is 999. | [optional] [default to 20]
 **page** | **Integer**| By default the first page is returned but you can specify any page number to retrieve objects | [optional] [default to 1]

### Return type

[**Array&lt;DefectResource&gt;**](DefectResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **submit_defect**
> DefectResource submit_defect(project_id, body)

Submit a Defect

To submit an internal Defect

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

body = SwaggerClient::DefectResource.new # DefectResource | <em>properties:</em> a JSONArray of field-value pairs  <em>attachments:</em> a JSONArray of Attachment objects


begin
  #Submit a Defect
  result = api_instance.submit_defect(project_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->submit_defect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **body** | [**DefectResource**](DefectResource.md)| &lt;em&gt;properties:&lt;/em&gt; a JSONArray of field-value pairs  &lt;em&gt;attachments:&lt;/em&gt; a JSONArray of Attachment objects | 

### Return type

[**DefectResource**](DefectResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_comment**
> CommentResource update_comment(project_id, id_or_key, comment_id, body)

Updates a Comment of a Defect

To update a specific Comment of a Defect  <strong>qTest Manager version:</strong> 7.5+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

id_or_key = "id_or_key_example" # String | PID or ID of the defect whose comment you want to update

comment_id = 789 # Integer | ID of the comment

body = SwaggerClient::CommentResource.new # CommentResource | Given resource to update a comment.


begin
  #Updates a Comment of a Defect
  result = api_instance.update_comment(project_id, id_or_key, comment_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->update_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **id_or_key** | **String**| PID or ID of the defect whose comment you want to update | 
 **comment_id** | **Integer**| ID of the comment | 
 **body** | [**CommentResource**](CommentResource.md)| Given resource to update a comment. | 

### Return type

[**CommentResource**](CommentResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update_defect**
> DefectResource update_defect(project_id, defect_id, body)

Updates a Defect

To update a Defect  <strong>qTest Manager version:</strong> 6+

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

api_instance = SwaggerClient::DefectApi.new

project_id = 789 # Integer | ID of the project

defect_id = 789 # Integer | ID of the Defect which needs to be updated.

body = SwaggerClient::DefectResource.new # DefectResource | The Defect's updated properties


begin
  #Updates a Defect
  result = api_instance.update_defect(project_id, defect_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefectApi->update_defect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **Integer**| ID of the project | 
 **defect_id** | **Integer**| ID of the Defect which needs to be updated. | 
 **body** | [**DefectResource**](DefectResource.md)| The Defect&#39;s updated properties | 

### Return type

[**DefectResource**](DefectResource.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



