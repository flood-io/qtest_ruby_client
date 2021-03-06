=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ObjectlinkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets associated objects of given objects
    # To retrieve associated objects of given objects  <strong>qTest Manager version:</strong> 7.5+
    # @param project_id ID of the project
    # @param type Valid values include &lt;em&gt;releases&lt;/em&gt;, &lt;em&gt;builds&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;,&lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-runs&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt; or &lt;em&gt;defects&lt;/em&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids IDs of objects whose links you want to retrieve
    # @option opts [Array<String>] :pids In case of &lt;em&gt;type&#x3D;defects&lt;/em&gt;, you can specify a list of external defect id in this parameters.  It cannot be used for other types
    # @option opts [BOOLEAN] :t_rof_sharedprojects 
    # @return [Array<LinkedArtifactContainer>]
    def find(project_id, type, opts = {})
      data, _status_code, _headers = find_with_http_info(project_id, type, opts)
      return data
    end

    # Gets associated objects of given objects
    # To retrieve associated objects of given objects  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
    # @param project_id ID of the project
    # @param type Valid values include &lt;em&gt;releases&lt;/em&gt;, &lt;em&gt;builds&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;,&lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-runs&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt; or &lt;em&gt;defects&lt;/em&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids IDs of objects whose links you want to retrieve
    # @option opts [Array<String>] :pids In case of &lt;em&gt;type&#x3D;defects&lt;/em&gt;, you can specify a list of external defect id in this parameters.  It cannot be used for other types
    # @option opts [BOOLEAN] :t_rof_sharedprojects 
    # @return [Array<(Array<LinkedArtifactContainer>, Fixnum, Hash)>] Array<LinkedArtifactContainer> data, response status code and response headers
    def find_with_http_info(project_id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ObjectlinkApi.find ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling ObjectlinkApi.find" if project_id.nil?
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling ObjectlinkApi.find" if type.nil?
      # verify enum value
      unless ['releases', 'builds', 'requirements', 'test-cases', 'test-runs', 'test-logs', 'test-steps', 'defects'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of releases, builds, requirements, test-cases, test-runs, test-logs, test-steps, defects"
      end
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/linked-artifacts".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?
      query_params[:'pids'] = @api_client.build_collection_param(opts[:'pids'], :multi) if !opts[:'pids'].nil?
      query_params[:'TRofSharedprojects'] = opts[:'t_rof_sharedprojects'] if !opts[:'t_rof_sharedprojects'].nil?

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
        :return_type => 'Array<LinkedArtifactContainer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectlinkApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates links between objects
    # To add associated objects to another object
    # @param project_id ID of the project
    # @param object_type the object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases
    # @param type The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects
    # @param body A JSONArray of associated object IDs which are being added to the source object
    # @param object_id ID of the source object
    # @param [Hash] opts the optional parameters
    # @return [Array<LinkedArtifactContainer>]
    def link_artifacts(project_id, object_type, type, body, object_id, opts = {})
      data, _status_code, _headers = link_artifacts_with_http_info(project_id, object_type, type, body, object_id, opts)
      return data
    end

    # Creates links between objects
    # To add associated objects to another object
    # @param project_id ID of the project
    # @param object_type the object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases
    # @param type The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects
    # @param body A JSONArray of associated object IDs which are being added to the source object
    # @param object_id ID of the source object
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LinkedArtifactContainer>, Fixnum, Hash)>] Array<LinkedArtifactContainer> data, response status code and response headers
    def link_artifacts_with_http_info(project_id, object_type, type, body, object_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ObjectlinkApi.link_artifacts ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling ObjectlinkApi.link_artifacts" if project_id.nil?
      # verify the required parameter 'object_type' is set
      fail ArgumentError, "Missing the required parameter 'object_type' when calling ObjectlinkApi.link_artifacts" if object_type.nil?
      # verify enum value
      unless ['releases', 'builds', 'requirements', 'test-logs', 'test-steps'].include?(object_type)
        fail ArgumentError, "invalid value for 'object_type', must be one of releases, builds, requirements, test-logs, test-steps"
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling ObjectlinkApi.link_artifacts" if type.nil?
      # verify enum value
      unless ['releases', 'builds', 'requirements', 'test-cases', 'test-runs', 'test-logs', 'test-steps', 'defects'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of releases, builds, requirements, test-cases, test-runs, test-logs, test-steps, defects"
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ObjectlinkApi.link_artifacts" if body.nil?
      # verify the required parameter 'object_id' is set
      fail ArgumentError, "Missing the required parameter 'object_id' when calling ObjectlinkApi.link_artifacts" if object_id.nil?
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/{objectType}/{objectId}/link".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'objectType' + '}', object_type.to_s).sub('{' + 'objectId' + '}', object_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type

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
        :return_type => 'Array<LinkedArtifactContainer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectlinkApi#link_artifacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes links between objects
    # To remove associated objects from another object
    # @param project_id ID of the project
    # @param object_type The object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases
    # @param type The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects
    # @param body A JSONArray of associated object IDs which are being removed from the source object
    # @param object_id ID of the source object
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def unlink_artifacts(project_id, object_type, type, body, object_id, opts = {})
      data, _status_code, _headers = unlink_artifacts_with_http_info(project_id, object_type, type, body, object_id, opts)
      return data
    end

    # Removes links between objects
    # To remove associated objects from another object
    # @param project_id ID of the project
    # @param object_type The object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases
    # @param type The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects
    # @param body A JSONArray of associated object IDs which are being removed from the source object
    # @param object_id ID of the source object
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def unlink_artifacts_with_http_info(project_id, object_type, type, body, object_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ObjectlinkApi.unlink_artifacts ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling ObjectlinkApi.unlink_artifacts" if project_id.nil?
      # verify the required parameter 'object_type' is set
      fail ArgumentError, "Missing the required parameter 'object_type' when calling ObjectlinkApi.unlink_artifacts" if object_type.nil?
      # verify enum value
      unless ['releases', 'builds', 'requirements', 'test-logs', 'test-steps'].include?(object_type)
        fail ArgumentError, "invalid value for 'object_type', must be one of releases, builds, requirements, test-logs, test-steps"
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling ObjectlinkApi.unlink_artifacts" if type.nil?
      # verify enum value
      unless ['releases', 'builds', 'requirements', 'test-cases', 'test-runs', 'test-logs', 'test-steps', 'defects'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of releases, builds, requirements, test-cases, test-runs, test-logs, test-steps, defects"
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ObjectlinkApi.unlink_artifacts" if body.nil?
      # verify the required parameter 'object_id' is set
      fail ArgumentError, "Missing the required parameter 'object_id' when calling ObjectlinkApi.unlink_artifacts" if object_id.nil?
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/{objectType}/{objectId}/link".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'objectType' + '}', object_type.to_s).sub('{' + 'objectId' + '}', object_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectlinkApi#unlink_artifacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
