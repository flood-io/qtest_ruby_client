# SwaggerClient::LoginApi

All URIs are relative to *https://apitryout.qtestnet.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_access_token**](LoginApi.md#post_access_token) | **POST** /oauth/token | Log in


# **post_access_token**
> OAuthResponse post_access_token(opts)

Log in

To authenticate the API client against qTest Manager and acquire authorized access token.    Note: Please choose parameter <em>content-type=application/x-www-form-urlencoded</em>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LoginApi.new

opts = { 
  grant_type: "password", # String | always use <em>grant_type=password</em>
  username: "username_example", # String | Your qTest Manager username
  password: "password_example", # String | Your qTest Manager password
  authorization: "authorization_example" # String | Basic + [base64 string of \"<strong>your qTest site name and colon</strong>\"]  Example: qTest Manager site is: apitryout.qtestnet.com then site name is: apitryout + ':', then Authorization is: Basic YXBpdHJ5b3V0Og==
}

begin
  #Log in
  result = api_instance.post_access_token(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LoginApi->post_access_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| always use &lt;em&gt;grant_type&#x3D;password&lt;/em&gt; | [optional] [default to password]
 **username** | **String**| Your qTest Manager username | [optional] 
 **password** | **String**| Your qTest Manager password | [optional] 
 **authorization** | **String**| Basic + [base64 string of \&quot;&lt;strong&gt;your qTest site name and colon&lt;/strong&gt;\&quot;]  Example: qTest Manager site is: apitryout.qtestnet.com then site name is: apitryout + &#39;:&#39;, then Authorization is: Basic YXBpdHJ5b3V0Og&#x3D;&#x3D; | [optional] 

### Return type

[**OAuthResponse**](OAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



