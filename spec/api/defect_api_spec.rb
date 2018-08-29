=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::DefectApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DefectApi' do
  before do
    # run before each test
    @instance = SwaggerClient::DefectApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefectApi' do
    it 'should create an instact of DefectApi' do
      expect(@instance).to be_instance_of(SwaggerClient::DefectApi)
    end
  end

  # unit tests for add_comment
  # Adds a Comment to a Defect
  # To add a Comment to a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param id_or_key PID or ID of the Defect
  # @param body The Comment&#39;s content
  # @param [Hash] opts the optional parameters
  # @return [CommentResource]
  describe 'add_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_comment
  # Deletes a Comment of a Defect
  # To delete a specific Comment of a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param id_or_key PID or ID of the Defect whose Comment you want to delete
  # @param comment_id ID of the comment.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_comment
  # Gets a Comment of a Defect
  # To retrieve a specific Comment of a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param id_or_key PID or ID of the Defect whose comment you want to retrieve
  # @param comment_id ID of the comment
  # @param [Hash] opts the optional parameters
  # @return [CommentResource]
  describe 'get_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_comments
  # Gets all Comments of a Defect
  # To retrieve all Comments of a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param id_or_key PID or ID of the Defect whose comments you want to retrieve
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
  # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
  # @return [PagedResourceCommentResource]
  describe 'get_comments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_defect
  # Gets a Defect
  # To retrieve a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+
  # @param project_id ID of the project
  # @param defect_id ID of the defect.
  # @param [Hash] opts the optional parameters
  # @return [DefectResource]
  describe 'get_defect test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_last_changed
  # Gets recently updated Defects
  # To retrieve Defects which have been recently updated after a specified time
  # @param project_id ID of the project
  # @param start_time The specified time since when the Defects have been updated. It needs to be URL encoded: &lt;em&gt;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ&lt;/em&gt; or &lt;em&gt;yyyy-MM-dd&#39;T&#39;HH:mm:ssZZ&lt;/em&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :end_time Do not support at this time. Use the current time only.
  # @option opts [Integer] :size The result is paginated. By the default, the number of objects in each page is 100. You can specify your custom number in this parameter. The maximum page size is 999.
  # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
  # @return [Array<DefectResource>]
  describe 'get_last_changed test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_defect
  # Submit a Defect
  # To submit an internal Defect
  # @param project_id ID of the project
  # @param body &lt;em&gt;properties:&lt;/em&gt; a JSONArray of field-value pairs  &lt;em&gt;attachments:&lt;/em&gt; a JSONArray of Attachment objects
  # @param [Hash] opts the optional parameters
  # @return [DefectResource]
  describe 'submit_defect test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_comment
  # Updates a Comment of a Defect
  # To update a specific Comment of a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param id_or_key PID or ID of the defect whose comment you want to update
  # @param comment_id ID of the comment
  # @param body Given resource to update a comment.
  # @param [Hash] opts the optional parameters
  # @return [CommentResource]
  describe 'update_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_defect
  # Updates a Defect
  # To update a Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 6+
  # @param project_id ID of the project
  # @param defect_id ID of the Defect which needs to be updated.
  # @param body The Defect&#39;s updated properties
  # @param [Hash] opts the optional parameters
  # @return [DefectResource]
  describe 'update_defect test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end