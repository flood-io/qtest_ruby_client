=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class TestcycleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a Test Cycle
    # To create a Test Cycle  <strong>qTest Manager version:</strong> 6+
    # @param project_id ID of the project
    # @param body Given resource to create a test cycle.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :parent_id ID of the Release or Test Cycle under which the newly created Test Cycle will be located.   Use 0 (zero) to create the Test Cycle under the root
    # @option opts [String] :parent_type The artifact type of the parent folder. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt;
    # @return [TestCycleResource]
    def create_cycle(project_id, body, opts = {})
      data, _status_code, _headers = create_cycle_with_http_info(project_id, body, opts)
      return data
    end

    # Create a Test Cycle
    # To create a Test Cycle  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+
    # @param project_id ID of the project
    # @param body Given resource to create a test cycle.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :parent_id ID of the Release or Test Cycle under which the newly created Test Cycle will be located.   Use 0 (zero) to create the Test Cycle under the root
    # @option opts [String] :parent_type The artifact type of the parent folder. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt;
    # @return [Array<(TestCycleResource, Fixnum, Hash)>] TestCycleResource data, response status code and response headers
    def create_cycle_with_http_info(project_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TestcycleApi.create_cycle ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling TestcycleApi.create_cycle" if project_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling TestcycleApi.create_cycle" if body.nil?
      if opts[:'parent_type'] && !['root', 'release', 'test-cycle'].include?(opts[:'parent_type'])
        fail ArgumentError, 'invalid value for "parent_type", must be one of root, release, test-cycle'
      end
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/test-cycles".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'parentId'] = opts[:'parent_id'] if !opts[:'parent_id'].nil?
      query_params[:'parentType'] = opts[:'parent_type'] if !opts[:'parent_type'].nil?

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
        :return_type => 'TestCycleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestcycleApi#create_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Test Cycle
    # To delete a Test Cycle  <strong>qTest Manager version:</strong> 6+
    # @param project_id ID of the project
    # @param test_cycle_id ID of the Test Cycle which needs to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force The Test Cycle can only be deleted if it contains no children. Specify &lt;em&gt;force&#x3D;true&lt;/em&gt; to delete the Test Cycle and its children
    # @return [Message]
    def delete_cycle(project_id, test_cycle_id, opts = {})
      data, _status_code, _headers = delete_cycle_with_http_info(project_id, test_cycle_id, opts)
      return data
    end

    # Deletes a Test Cycle
    # To delete a Test Cycle  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+
    # @param project_id ID of the project
    # @param test_cycle_id ID of the Test Cycle which needs to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force The Test Cycle can only be deleted if it contains no children. Specify &lt;em&gt;force&#x3D;true&lt;/em&gt; to delete the Test Cycle and its children
    # @return [Array<(Message, Fixnum, Hash)>] Message data, response status code and response headers
    def delete_cycle_with_http_info(project_id, test_cycle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TestcycleApi.delete_cycle ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling TestcycleApi.delete_cycle" if project_id.nil?
      # verify the required parameter 'test_cycle_id' is set
      fail ArgumentError, "Missing the required parameter 'test_cycle_id' when calling TestcycleApi.delete_cycle" if test_cycle_id.nil?
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/test-cycles/{testCycleId}".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'testCycleId' + '}', test_cycle_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Message')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestcycleApi#delete_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Test Cycle
    # To retrieve a Test Cycle  <strong>qTest Manager version:</strong> 6+
    # @param project_id ID of the project
    # @param test_cycle_id ID of the Test Cycle which you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to include its sub and grand-sub Test Cycles and Test Suites in the response
    # @return [TestCycleResource]
    def get_test_cycle(project_id, test_cycle_id, opts = {})
      data, _status_code, _headers = get_test_cycle_with_http_info(project_id, test_cycle_id, opts)
      return data
    end

    # Gets a Test Cycle
    # To retrieve a Test Cycle  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+
    # @param project_id ID of the project
    # @param test_cycle_id ID of the Test Cycle which you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to include its sub and grand-sub Test Cycles and Test Suites in the response
    # @return [Array<(TestCycleResource, Fixnum, Hash)>] TestCycleResource data, response status code and response headers
    def get_test_cycle_with_http_info(project_id, test_cycle_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TestcycleApi.get_test_cycle ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling TestcycleApi.get_test_cycle" if project_id.nil?
      # verify the required parameter 'test_cycle_id' is set
      fail ArgumentError, "Missing the required parameter 'test_cycle_id' when calling TestcycleApi.get_test_cycle" if test_cycle_id.nil?
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/test-cycles/{testCycleId}".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'testCycleId' + '}', test_cycle_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

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
        :return_type => 'TestCycleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestcycleApi#get_test_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets multiple Test Cycles
    # To retrieve Test Cycles which are located directly under root or a Release/Test Cycle
    # @param project_id ID of the project
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :parent_id ID of the Release or Test Cycle which directly contains the Test Cycles you are retrieving. Input 0 (zero) to get Test Cycles directly under root
    # @option opts [String] :parent_type The artifact type of the parent folder. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt;
    # @option opts [String] :expand Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to retrieve the Test Cycles&#39; sub and grand-sub Cycles/Suites
    # @return [Array<TestCycleResource>]
    def get_test_cycles(project_id, opts = {})
      data, _status_code, _headers = get_test_cycles_with_http_info(project_id, opts)
      return data
    end

    # Gets multiple Test Cycles
    # To retrieve Test Cycles which are located directly under root or a Release/Test Cycle
    # @param project_id ID of the project
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :parent_id ID of the Release or Test Cycle which directly contains the Test Cycles you are retrieving. Input 0 (zero) to get Test Cycles directly under root
    # @option opts [String] :parent_type The artifact type of the parent folder. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt;
    # @option opts [String] :expand Specify &lt;em&gt;expand&#x3D;descendants&lt;/em&gt; to retrieve the Test Cycles&#39; sub and grand-sub Cycles/Suites
    # @return [Array<(Array<TestCycleResource>, Fixnum, Hash)>] Array<TestCycleResource> data, response status code and response headers
    def get_test_cycles_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TestcycleApi.get_test_cycles ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling TestcycleApi.get_test_cycles" if project_id.nil?
      if opts[:'parent_type'] && !['root', 'release', 'test-cycle'].include?(opts[:'parent_type'])
        fail ArgumentError, 'invalid value for "parent_type", must be one of root, release, test-cycle'
      end
      if opts[:'expand'] && !['descendants'].include?(opts[:'expand'])
        fail ArgumentError, 'invalid value for "expand", must be one of descendants'
      end
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/test-cycles".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'parentId'] = opts[:'parent_id'] if !opts[:'parent_id'].nil?
      query_params[:'parentType'] = opts[:'parent_type'] if !opts[:'parent_type'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

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
        :return_type => 'Array<TestCycleResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestcycleApi#get_test_cycles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Test Cycle
    # To update a Test Cycle or move it to another container  <strong>qTest Manager version:</strong> 6+
    # @param project_id ID of the project
    # @param test_cycle_id ID of the Test Cycle which needs to be updated.
    # @param body The Test Cycle&#39;s updated properties
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :parent_id ID of a Release or parent Test Cycle which the updated Test Cycle will be moved to. Input 0 (zero) to move the Test Cycle to under root
    # @option opts [String] :parent_type The artifact type of the parent folder to which the Test Cycle will be moved to. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt;
    # @return [TestCycleResource]
    def update_cycle(project_id, test_cycle_id, body, opts = {})
      data, _status_code, _headers = update_cycle_with_http_info(project_id, test_cycle_id, body, opts)
      return data
    end

    # Updates a Test Cycle
    # To update a Test Cycle or move it to another container  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+
    # @param project_id ID of the project
    # @param test_cycle_id ID of the Test Cycle which needs to be updated.
    # @param body The Test Cycle&#39;s updated properties
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :parent_id ID of a Release or parent Test Cycle which the updated Test Cycle will be moved to. Input 0 (zero) to move the Test Cycle to under root
    # @option opts [String] :parent_type The artifact type of the parent folder to which the Test Cycle will be moved to. Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;test-cycle&lt;/em&gt; or &lt;em&gt;root&lt;/em&gt;
    # @return [Array<(TestCycleResource, Fixnum, Hash)>] TestCycleResource data, response status code and response headers
    def update_cycle_with_http_info(project_id, test_cycle_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TestcycleApi.update_cycle ..."
      end
      # verify the required parameter 'project_id' is set
      fail ArgumentError, "Missing the required parameter 'project_id' when calling TestcycleApi.update_cycle" if project_id.nil?
      # verify the required parameter 'test_cycle_id' is set
      fail ArgumentError, "Missing the required parameter 'test_cycle_id' when calling TestcycleApi.update_cycle" if test_cycle_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling TestcycleApi.update_cycle" if body.nil?
      if opts[:'parent_type'] && !['root', 'release', 'test-cycle'].include?(opts[:'parent_type'])
        fail ArgumentError, 'invalid value for "parent_type", must be one of root, release, test-cycle'
      end
      # resource path
      local_var_path = "/api/v3/projects/{projectId}/test-cycles/{testCycleId}".sub('{format}','json').sub('{' + 'projectId' + '}', project_id.to_s).sub('{' + 'testCycleId' + '}', test_cycle_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'parentId'] = opts[:'parent_id'] if !opts[:'parent_id'].nil?
      query_params[:'parentType'] = opts[:'parent_type'] if !opts[:'parent_type'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TestCycleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TestcycleApi#update_cycle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end