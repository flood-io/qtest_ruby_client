=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ObjectlinkApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ObjectlinkApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ObjectlinkApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ObjectlinkApi' do
    it 'should create an instact of ObjectlinkApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ObjectlinkApi)
    end
  end

  # unit tests for find
  # Gets associated objects of given objects
  # To retrieve associated objects of given objects  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.5+
  # @param project_id ID of the project
  # @param type Valid values include &lt;em&gt;releases&lt;/em&gt;, &lt;em&gt;builds&lt;/em&gt;, &lt;em&gt;requirements&lt;/em&gt;,&lt;em&gt;test-cases&lt;/em&gt;, &lt;em&gt;test-runs&lt;/em&gt;, &lt;em&gt;test-logs&lt;/em&gt;, &lt;em&gt;test-steps&lt;/em&gt; or &lt;em&gt;defects&lt;/em&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :ids IDs of objects whose links you want to retrieve
  # @option opts [Array<String>] :pids In case of &lt;em&gt;type&#x3D;defects&lt;/em&gt;, you can specify a list of external defect id in this parameters.  It cannot be used for other types
  # @option opts [BOOLEAN] :t_rof_sharedprojects 
  # @return [Array<LinkedArtifactContainer>]
  describe 'find test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for link_artifacts
  # Creates links between objects
  # To add associated objects to another object
  # @param project_id ID of the project
  # @param object_type the object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases
  # @param type The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects
  # @param body A JSONArray of associated object IDs which are being added to the source object
  # @param object_id ID of the source object
  # @param [Hash] opts the optional parameters
  # @return [Array<LinkedArtifactContainer>]
  describe 'link_artifacts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unlink_artifacts
  # Removes links between objects
  # To remove associated objects from another object
  # @param project_id ID of the project
  # @param object_type The object type of the source object. Valid values include requirements, builds, test-steps, test-logs, releases
  # @param type The object type of the associated objects which are being added to the source object.   Valid values include releases, builds, requirements, test-cases, test-runs, test-logs, test-steps or defects
  # @param body A JSONArray of associated object IDs which are being removed from the source object
  # @param object_id ID of the source object
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'unlink_artifacts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end