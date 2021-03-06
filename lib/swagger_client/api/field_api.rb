=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class FieldApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a Custom Field of an Object Type
    # To create a new custom Field for Release, Build, Requirement, Test Case, Test Suite, Test Run, or Defect
    # @param project_id ID of the project
    # @param body The field&#39;s properties and values  &lt;strong&gt;data_type (required):&lt;/strong&gt; specify the field type. Its valid values include  - 1 - Text box  - 2 - Text area  - 3 - Combo box  - 4 - Date picker  - 5 - User list  - 6 - Rich text editor  - 7 - Number  - 8 - Check box  - 9 - Date time picker  - 12 - URL  - 17 - Multiple selection combobox  In case you are creating a multiple picklist typed field (data_type&#39;s value is 8 or 17), you will need to specify &lt;em&gt;multiple&#x3D;true&lt;/em&gt;  In case you are creating a picklist typed field, you can specify the field&#39;s values in the &lt;em&gt;allowed_values&lt;/em&gt; array
    # @param object_type Valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs
    # @param [Hash] opts the optional parameters
    # @return [FieldResource]
    def create(project_id, body, object_type, opts = {})
      data, _status_code, _headers = create_with_http_info(project_id, body, object_type, opts)
      return data
    end

    # Creates a Custom Field of an Object Type
    # To create a new custom Field for Release, Build, Requirement, Test Case, Test Suite, Test Run, or Defect
    # @param project_id ID of the project
    # @param body The field&#39;s properties and values  &lt;strong&gt;data_type (required):&lt;/strong&gt; specify the field type. Its valid values include  - 1 - Text box  - 2 - Text area  - 3 - Combo box  - 4 - Date picker  - 5 - User list  - 6 - Rich text editor  - 7 - Number  - 8 - Check box  - 9 - Date time picker  - 12 - URL  - 17 - Multiple selection combobox  In case you are creating a multiple picklist typed field (data_type&#39;s value is 8 or 17), you will need to specify &lt;em&gt;multiple&#x3D;true&lt;/em&gt;  In case you are creating a picklist typed field, you can specify the field&#39;s values in the &lt;em&gt;allowed_values&lt;/em&gt; array
    # @param object_type Valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs
    # @param [Hash] opts the optional parameters
    # @return [Array<(FieldResource, Fixnum, Hash)>] FieldResource data, response status code and response headers
    def create_with_http_info(project_id, body, object_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FieldApi.create ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling FieldApi.create" if project_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling FieldApi.create" if body.nil?
      # verify the required parameter 'object_type' is set
      fail ArgumentError, "Missing the required parameter 'object_type' when calling FieldApi.create" if object_type.nil?
      # verify enum value
      unless ['requirements', 'test-cases', 'defects', 'test-runs', 'test-suites', 'releases', 'builds'].include?(object_type)
        fail ArgumentError, "invalid value for 'object_type', must be one of requirements, test-cases, defects, test-runs, test-suites, releases, builds"
      end
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/settings/{objectType}/fields".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'objectType' + '}', object_type.to_s)

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
        :return_type => 'FieldResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets all Fields of an Object Type
    # To retrieve Fields of an Object Type  <strong>qTest Manager version:</strong> 4+
    # @param project_id ID of the project
    # @param object_type valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_inactive By default inactive Fields are excluded from the response. Specify &lt;em&gt;includeInactive&#x3D;true&lt;/em&gt; to include inactive fields
    # @return [Array<FieldResource>]
    def get_fields(project_id, object_type, opts = {})
      data, _status_code, _headers = get_fields_with_http_info(project_id, object_type, opts)
      return data
    end

    # Gets all Fields of an Object Type
    # To retrieve Fields of an Object Type  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
    # @param project_id ID of the project
    # @param object_type valid values include releases, builds, requirements, test-cases, defects, test-suites and test-runs
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_inactive By default inactive Fields are excluded from the response. Specify &lt;em&gt;includeInactive&#x3D;true&lt;/em&gt; to include inactive fields
    # @return [Array<(Array<FieldResource>, Fixnum, Hash)>] Array<FieldResource> data, response status code and response headers
    def get_fields_with_http_info(project_id, object_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FieldApi.get_fields ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling FieldApi.get_fields" if project_id.nil?
      # verify the required parameter 'object_type' is set
      fail ArgumentError, "Missing the required parameter 'object_type' when calling FieldApi.get_fields" if object_type.nil?
      # verify enum value
      unless ['requirements', 'test-cases', 'defects', 'test-runs', 'test-suites', 'releases', 'builds'].include?(object_type)
        fail ArgumentError, "invalid value for 'object_type', must be one of requirements, test-cases, defects, test-runs, test-suites, releases, builds"
      end
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/settings/{objectType}/fields".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'objectType' + '}', object_type.to_s)

      # query parameters
      query_params = {}
      query_params[:'includeInactive'] = opts[:'include_inactive'] if !opts[:'include_inactive'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<FieldResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldApi#get_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
