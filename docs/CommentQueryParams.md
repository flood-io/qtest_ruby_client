# SwaggerClient::CommentQueryParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | **DateTime** | StartDate with format: yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ or yyyy-MM-dd&#39;T&#39;HH:mm:ssZZ\&quot; | [optional] 
**_end** | **DateTime** | EndDate with format: yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ or yyyy-MM-dd&#39;T&#39;HH:mm:ssZZ\&quot; | [optional] 
**object_type** | **String** | Only support comments for object types: [requirements, defects, test-cases, test-runs] | 
**fields** | **Array&lt;String&gt;** | Specify which object fields you want to include in the response. If you omit it or specify an asterisk (*), all fields are included | [optional] 
**object** | **Integer** | Id of the object from which you want to retrieve comments | [optional] 
**author** | **Integer** | Id of the user who made the comments | [optional] 


