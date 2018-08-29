=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CommonApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CommonApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CommonApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommonApi' do
    it 'should create an instact of CommonApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CommonApi)
    end
  end

  # unit tests for edit_system_field
  # Edit System Field of an Object Type by the field
  # To edit System Field of an Object Type by the field
  # @param project_id ID of the project
  # @param field_id ID of the field.
  # @param body Given resource to edit a system field.
  # @param object_type The object type.
  # @param [Hash] opts the optional parameters
  # @return [FieldResource]
  describe 'edit_system_field test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_custom_field
  # field.updateCustomField
  # Update active or inactive custom fields of an Object Type
  # @param project_id ID of the project
  # @param object_type The object type
  # @param body Given resource to update custom fields.
  # @param [Hash] opts the optional parameters
  # @return [Array<FieldResource>]
  describe 'update_custom_field test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end