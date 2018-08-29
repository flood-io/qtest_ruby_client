# SwaggerClient::AutomationjobApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_schedule**](AutomationjobApi.md#create_schedule) | **POST** /api/v3/automation/jobs/schedule/create | Create a Schedule


# **create_schedule**
> Integer create_schedule(body)

Create a Schedule

To create a new Schedule which will be executed immediately  <strong>NOTE:</strong> Try It Out function will not work for this API  <strong>qTest Manager version:</strong> 6+\"

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

api_instance = SwaggerClient::AutomationjobApi.new

body = SwaggerClient::AutomationScheduleCreationAPI.new # AutomationScheduleCreationAPI | 


begin
  #Create a Schedule
  result = api_instance.create_schedule(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutomationjobApi->create_schedule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AutomationScheduleCreationAPI**](AutomationScheduleCreationAPI.md)|  | 

### Return type

**Integer**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



