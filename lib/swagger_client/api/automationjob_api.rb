=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class AutomationjobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a Schedule
    # To create a new Schedule which will be executed immediately  <strong>NOTE:</strong> Try It Out function will not work for this API  <strong>qTest Manager version:</strong> 6+\"
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def create_schedule(body, opts = {})
      data, _status_code, _headers = create_schedule_with_http_info(body, opts)
      return data
    end

    # Create a Schedule
    # To create a new Schedule which will be executed immediately  &lt;strong&gt;NOTE:&lt;/strong&gt; Try It Out function will not work for this API  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+\&quot;
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def create_schedule_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AutomationjobApi.create_schedule ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling AutomationjobApi.create_schedule" if body.nil?
      # resource path
      local_var_path = "/api/v3/automation/jobs/schedule/create".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationjobApi#create_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
