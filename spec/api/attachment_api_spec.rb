=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AttachmentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AttachmentApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AttachmentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AttachmentApi' do
    it 'should create an instact of AttachmentApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AttachmentApi)
    end
  end

  # unit tests for delete
  # Deletes an Attachment from an Object
  # To delete an Attachment from a Release, Build, Requirement, Test Case, Test Log, Test Step or Defect  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param blob_handle_id ID of the Attachment
  # @param object_type Valid values include releases, builds, requirements, test-cases, test-logs, test-steps or defects  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param object_id ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)
  # @param [Hash] opts the optional parameters
  # @return [Message]
  describe 'delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachment
  # Gets an Attachment of an Object
  # To retrieve an Attachment from a Release, Build, Requirement, Test Case, Test Log, Test Step or Defect
  # @param project_id ID of the project
  # @param attachment_id ID of attachment
  # @param object_type Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;build&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;, &lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt;, or &lt;em&gt;defects&lt;/em&gt;
  # @param object_id ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)
  # @param [Hash] opts the optional parameters
  # @return [OutputStream]
  describe 'get_attachment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachments_of
  # Gets all Attachments of an Object
  # To retrieve all Attachments of a Release, Build, Requirement, Test Case, Test Log, Test Step or Defect
  # @param project_id ID of the project
  # @param object_type Valid values include &lt;em&gt;release&lt;/em&gt;, &lt;em&gt;build&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;, &lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt;, or &lt;em&gt;defects&lt;/em&gt;
  # @param object_id ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)
  # @param [Hash] opts the optional parameters
  # @return [Array<AttachmentResource>]
  describe 'get_attachments_of test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Searches for Attachments
  # To query for attachments of &lt;em&gt;Releases&lt;/em&gt;, &lt;em&gt;Builds&lt;/em&gt;, &lt;em&gt;Requirements&lt;/em&gt;, &lt;em&gt;Test Cases&lt;/em&gt;, &lt;em&gt;Test Logs&lt;/em&gt;, &lt;em&gt;Test Steps&lt;/em&gt; or &lt;em&gt;Defects&lt;/em&gt;
  # @param project_id ID of the project
  # @param type Its valid values include &lt;em&gt;releases&lt;/em&gt;, &lt;em&gt;builds&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;, &lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt; or &lt;em&gt;defects&lt;/em&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :ids List of object IDs (of the same type as specified in the parameter above), separated by commas
  # @option opts [Integer] :author ID of the user who created the attachment
  # @option opts [String] :created_date Its format is: &lt;strong&gt;{operator} {createdDate in timestamp or UTC}&lt;/strong&gt;  The &lt;em&gt;operator&lt;/em&gt; can be one of the following values:  &lt;b&gt;lt&lt;/b&gt;: less than the given date  &lt;b&gt;gt&lt;/b&gt;: greater than given date  &lt;b&gt;eq&lt;/b&gt;: equal to the given date  &lt;b&gt;le&lt;/b&gt;: less than or equal to the given date  &lt;b&gt;ge&lt;/b&gt;: greater then or equal to the given date
  # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
  # @option opts [Integer] :page By default, the first page is returned but you can specify any page number to retrieve attachments
  # @return [PagedResourceAttachmentResource]
  describe 'search test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload
  # Uploads an Attachment to an Object
  # To upload an Attachment to a Release, Build, Requirement, Test Case, Test Log, Test Step, or Defect
  # @param project_id ID of the project
  # @param object_type Valid values include releases, builds, requirements, test-cases, test-logs, test-steps or defects  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param object_id ID of the object (Release, Build, Requirement, Test Case, Test Log, Test Step or Defect)
  # @param file_name 
  # @param content_type 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AttachmentResource]
  describe 'upload test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end