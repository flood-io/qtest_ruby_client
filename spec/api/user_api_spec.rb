=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UserApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instact of UserApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UserApi)
    end
  end

  # unit tests for assign_to_project
  # Assigns a User to a Project
  # To assign a User to a Project
  # @param user_id ID of the user.
  # @param body The project ID and the assigned user profile in the project. If the profile is not provided, profile Developer is used by default
  # @param [Hash] opts the optional parameters
  # @return [AssignedProject]
  describe 'assign_to_project test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for assign_users_to_project
  # Assigns multiple Users to a Project
  # To assign a list of Users to a Project  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param body ID of the Project and an array of assigned Users&#39; IDs. If the profile is not provided, Developer profile is used by default
  # @param [Hash] opts the optional parameters
  # @return [AssignedUsersProject]
  describe 'assign_users_to_project test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_user
  # Invites a User
  # To invite a user to your qTest Manager instance and activate the account. If the password is omitted, the default \&quot;&lt;em&gt;admin123&lt;/em&gt;\&quot; will be used  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param body Invited user&#39;s information
  # @param [Hash] opts the optional parameters
  # @return [UserResource]
  describe 'create_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_by_user_name_or_email
  # Queries Users by Username
  # To query for users by their username  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 8.4.2+
  # @param [Hash] opts the optional parameters
  # @option opts [String] :username Login names (qTest login email, LDAP or SSO username) of users you want to query for. The API will return users which have been added to projects whose names contain the text specified in this parameter  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; Login name is case sensitive
  # @option opts [BOOLEAN] :include_inactive_users &lt;em&gt;includeInactiveUsers&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;includeInactiveUsers&#x3D;true&lt;/em&gt; - inactive users are included in the response
  # @option opts [BOOLEAN] :pagination &lt;em&gt;pagination&#x3D;true&lt;/em&gt; - default value. The result is paginated  &lt;em&gt;pagination&#x3D;false&lt;/em&gt; - the result is not paginated
  # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
  # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
  # @return [SearchUserResourceExtensionResponse]
  describe 'find_by_user_name_or_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_users_by_projects_name
  # Queries Users by Project Name
  # To query for users by names of their assigned projects  - Admin users with &lt;em&gt;Manage Client Users&lt;/em&gt; permission can query users in any projects  - For other users: the API only returns users within projects to which the requesting user is assigned
  # @param [Hash] opts the optional parameters
  # @option opts [String] :project_name Name of the project whose users you want to query for. The API will return users which have been added to projects whose names contain the text specified in this parameter  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; Project name is case sensitive
  # @option opts [BOOLEAN] :inactive &lt;em&gt;inactive&#x3D;false&lt;/em&gt; - default value. Inactive users are excluded from the response  &lt;em&gt;inactive&#x3D;true&lt;/em&gt; - include inactive users
  # @option opts [BOOLEAN] :pagination &lt;em&gt;pagination&#x3D;true&lt;/em&gt; - default value. The result is paginated  &lt;em&gt;pagination&#x3D;false&lt;/em&gt; - the result is not paginated
  # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
  # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
  # @return [SearchUserResponse]
  describe 'find_users_by_projects_name test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_avatar
  # Gets a User&#39;s Avatar
  # To retrieve a User&#39;s Avatar
  # @param user_id ID of the user.
  # @param [Hash] opts the optional parameters
  # @return [OutputStream]
  describe 'get_avatar test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_by_id
  # Gets a User
  # To retrieve a User&#39;s information
  # @param user_id ID of the user.
  # @param [Hash] opts the optional parameters
  # @return [UserResource]
  describe 'get_user_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reevaluate_token
  # Gets current user&#39;s information
  # To retrieve your information such as username, email, first name, and last name
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_inaccessible_apps 
  # @return [LoggedUser]
  describe 'reevaluate_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end