=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Assigns a User to a Project
    # To assign a User to a Project
    # @param user_id ID of the user.
    # @param body The project ID and the assigned user profile in the project. If the profile is not provided, profile Developer is used by default
    # @param [Hash] opts the optional parameters
    # @return [AssignedProject]
    def assign_to_project(user_id, body, opts = {})
      data, _status_code, _headers = assign_to_project_with_http_info(user_id, body, opts)
      return data
    end

    # Assigns a User to a Project
    # To assign a User to a Project
    # @param user_id ID of the user.
    # @param body The project ID and the assigned user profile in the project. If the profile is not provided, profile Developer is used by default
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssignedProject, Fixnum, Hash)>] AssignedProject data, response status code and response headers
    def assign_to_project_with_http_info(user_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.assign_to_project ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.assign_to_project" if user_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling UserApi.assign_to_project" if body.nil?
      # resource path
      local_var_path = "/api/v3/users/{userId}/projects".sub('{format}','json').sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AssignedProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#assign_to_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Assigns multiple Users to a Project
    # To assign a list of Users to a Project  <strong>qTest Manager version:</strong> 4+
    # @param body ID of the Project and an array of assigned Users&#39; IDs. If the profile is not provided, Developer profile is used by default
    # @param [Hash] opts the optional parameters
    # @return [AssignedUsersProject]
    def assign_users_to_project(body, opts = {})
      data, _status_code, _headers = assign_users_to_project_with_http_info(body, opts)
      return data
    end

    # Assigns multiple Users to a Project
    # To assign a list of Users to a Project  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
    # @param body ID of the Project and an array of assigned Users&#39; IDs. If the profile is not provided, Developer profile is used by default
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssignedUsersProject, Fixnum, Hash)>] AssignedUsersProject data, response status code and response headers
    def assign_users_to_project_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.assign_users_to_project ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling UserApi.assign_users_to_project" if body.nil?
      # resource path
      local_var_path = "/api/v3/users/projects".sub('{format}','json')

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
        :return_type => 'AssignedUsersProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#assign_users_to_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invites a User
    # To invite a user to your qTest Manager instance and activate the account. If the password is omitted, the default \"<em>admin123</em>\" will be used  <strong>qTest Manager version:</strong> 4+
    # @param body Invited user&#39;s information
    # @param [Hash] opts the optional parameters
    # @return [UserResource]
    def create_user(body, opts = {})
      data, _status_code, _headers = create_user_with_http_info(body, opts)
      return data
    end

    # Invites a User
    # To invite a user to your qTest Manager instance and activate the account. If the password is omitted, the default \&quot;&lt;em&gt;admin123&lt;/em&gt;\&quot; will be used  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
    # @param body Invited user&#39;s information
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResource, Fixnum, Hash)>] UserResource data, response status code and response headers
    def create_user_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.create_user ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling UserApi.create_user" if body.nil?
      # resource path
      local_var_path = "/api/v3/users".sub('{format}','json')

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
        :return_type => 'UserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queries Users by Username
    # To query for users by their username  <strong>qTest Manager version:</strong> 8.4.2+
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Login names (qTest login email, LDAP or SSO username) of users you want to query for. The API will return users which have been added to projects whose names contain the text specified in this parameter  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; Login name is case sensitive
    # @option opts [BOOLEAN] :include_inactive_users &lt;em&gt;includeInactiveUsers&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;includeInactiveUsers&#x3D;true&lt;/em&gt; - inactive users are included in the response
    # @option opts [BOOLEAN] :pagination &lt;em&gt;pagination&#x3D;true&lt;/em&gt; - default value. The result is paginated  &lt;em&gt;pagination&#x3D;false&lt;/em&gt; - the result is not paginated
    # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects (default to 1)
    # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter (default to 100)
    # @return [SearchUserResourceExtensionResponse]
    def find_by_user_name_or_email(opts = {})
      data, _status_code, _headers = find_by_user_name_or_email_with_http_info(opts)
      return data
    end

    # Queries Users by Username
    # To query for users by their username  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 8.4.2+
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Login names (qTest login email, LDAP or SSO username) of users you want to query for. The API will return users which have been added to projects whose names contain the text specified in this parameter  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; Login name is case sensitive
    # @option opts [BOOLEAN] :include_inactive_users &lt;em&gt;includeInactiveUsers&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;includeInactiveUsers&#x3D;true&lt;/em&gt; - inactive users are included in the response
    # @option opts [BOOLEAN] :pagination &lt;em&gt;pagination&#x3D;true&lt;/em&gt; - default value. The result is paginated  &lt;em&gt;pagination&#x3D;false&lt;/em&gt; - the result is not paginated
    # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
    # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
    # @return [Array<(SearchUserResourceExtensionResponse, Fixnum, Hash)>] SearchUserResourceExtensionResponse data, response status code and response headers
    def find_by_user_name_or_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.find_by_user_name_or_email ..."
      end
      # resource path
      local_var_path = "/api/v3/users/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'username'] = opts[:'username'] if !opts[:'username'].nil?
      query_params[:'includeInactiveUsers'] = opts[:'include_inactive_users'] if !opts[:'include_inactive_users'].nil?
      query_params[:'pagination'] = opts[:'pagination'] if !opts[:'pagination'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
        :return_type => 'SearchUserResourceExtensionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#find_by_user_name_or_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queries Users by Project Name
    # To query for users by names of their assigned projects  - Admin users with <em>Manage Client Users</em> permission can query users in any projects  - For other users: the API only returns users within projects to which the requesting user is assigned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :project_name Name of the project whose users you want to query for. The API will return users which have been added to projects whose names contain the text specified in this parameter  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; Project name is case sensitive
    # @option opts [BOOLEAN] :inactive &lt;em&gt;inactive&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;inactive&#x3D;true&lt;/em&gt; - include inactive users (default to true)
    # @option opts [BOOLEAN] :pagination &lt;em&gt;pagination&#x3D;true&lt;/em&gt; - default value. The result is paginated  &lt;em&gt;pagination&#x3D;false&lt;/em&gt; - the result is not paginated (default to true)
    # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects (default to 1)
    # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter (default to 100)
    # @return [SearchUserResponse]
    def find_users_by_projects_name(opts = {})
      data, _status_code, _headers = find_users_by_projects_name_with_http_info(opts)
      return data
    end

    # Queries Users by Project Name
    # To query for users by names of their assigned projects  - Admin users with &lt;em&gt;Manage Client Users&lt;/em&gt; permission can query users in any projects  - For other users: the API only returns users within projects to which the requesting user is assigned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :project_name Name of the project whose users you want to query for. The API will return users which have been added to projects whose names contain the text specified in this parameter  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; Project name is case sensitive
    # @option opts [BOOLEAN] :inactive &lt;em&gt;inactive&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;inactive&#x3D;true&lt;/em&gt; - include inactive users
    # @option opts [BOOLEAN] :pagination &lt;em&gt;pagination&#x3D;true&lt;/em&gt; - default value. The result is paginated  &lt;em&gt;pagination&#x3D;false&lt;/em&gt; - the result is not paginated
    # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
    # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
    # @return [Array<(SearchUserResponse, Fixnum, Hash)>] SearchUserResponse data, response status code and response headers
    def find_users_by_projects_name_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.find_users_by_projects_name ..."
      end
      # resource path
      local_var_path = "/api/v3/search/user".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'projectName'] = opts[:'project_name'] if !opts[:'project_name'].nil?
      query_params[:'inactive'] = opts[:'inactive'] if !opts[:'inactive'].nil?
      query_params[:'pagination'] = opts[:'pagination'] if !opts[:'pagination'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
        :return_type => 'SearchUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#find_users_by_projects_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a User's Avatar
    # To retrieve a User's Avatar
    # @param user_id ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [OutputStream]
    def get_avatar(user_id, opts = {})
      data, _status_code, _headers = get_avatar_with_http_info(user_id, opts)
      return data
    end

    # Gets a User&#39;s Avatar
    # To retrieve a User&#39;s Avatar
    # @param user_id ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OutputStream, Fixnum, Hash)>] OutputStream data, response status code and response headers
    def get_avatar_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.get_avatar ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.get_avatar" if user_id.nil?
      # resource path
      local_var_path = "/api/v3/users/{userId}/avatar".sub('{format}','json').sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'OutputStream')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_avatar\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a User
    # To retrieve a User's information
    # @param user_id ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [UserResource]
    def get_user_by_id(user_id, opts = {})
      data, _status_code, _headers = get_user_by_id_with_http_info(user_id, opts)
      return data
    end

    # Gets a User
    # To retrieve a User&#39;s information
    # @param user_id ID of the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResource, Fixnum, Hash)>] UserResource data, response status code and response headers
    def get_user_by_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.get_user_by_id ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.get_user_by_id" if user_id.nil?
      # resource path
      local_var_path = "/api/v3/users/{userId}".sub('{format}','json').sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'UserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets current user's information
    # To retrieve your information such as username, email, first name, and last name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_inaccessible_apps 
    # @return [LoggedUser]
    def reevaluate_token(opts = {})
      data, _status_code, _headers = reevaluate_token_with_http_info(opts)
      return data
    end

    # Gets current user&#39;s information
    # To retrieve your information such as username, email, first name, and last name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_inaccessible_apps 
    # @return [Array<(LoggedUser, Fixnum, Hash)>] LoggedUser data, response status code and response headers
    def reevaluate_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.reevaluate_token ..."
      end
      # resource path
      local_var_path = "/api/v3/re-evaluation".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'includeInaccessibleApps'] = opts[:'include_inaccessible_apps'] if !opts[:'include_inaccessible_apps'].nil?

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
        :return_type => 'LoggedUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#reevaluate_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
