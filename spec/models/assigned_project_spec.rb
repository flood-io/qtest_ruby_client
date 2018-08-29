=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::AssignedProject
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AssignedProject' do
  before do
    # run before each test
    @instance = SwaggerClient::AssignedProject.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssignedProject' do
    it 'should create an instact of AssignedProject' do
      expect(@instance).to be_instance_of(SwaggerClient::AssignedProject)
    end
  end
  describe 'test attribute "project_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "profile"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

