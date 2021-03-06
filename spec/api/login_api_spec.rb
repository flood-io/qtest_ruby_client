=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::LoginApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LoginApi' do
  before do
    # run before each test
    @instance = SwaggerClient::LoginApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LoginApi' do
    it 'should create an instact of LoginApi' do
      expect(@instance).to be_instance_of(SwaggerClient::LoginApi)
    end
  end

  # unit tests for post_access_token
  # Log in
  # To authenticate the API client against qTest Manager and acquire authorized access token.    Note: Please choose parameter &lt;em&gt;content-type&#x3D;application/x-www-form-urlencoded&lt;/em&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :grant_type always use &lt;em&gt;grant_type&#x3D;password&lt;/em&gt;
  # @option opts [String] :username Your qTest Manager username
  # @option opts [String] :password Your qTest Manager password
  # @option opts [String] :authorization Basic + [base64 string of \&quot;&lt;strong&gt;your qTest site name and colon&lt;/strong&gt;\&quot;]  Example: qTest Manager site is: apitryout.qtestnet.com then site name is: apitryout + &#39;:&#39;, then Authorization is: Basic YXBpdHJ5b3V0Og&#x3D;&#x3D;
  # @return [OAuthResponse]
  describe 'post_access_token test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
