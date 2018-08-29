=begin
#qTest Manager API Version 8.6 - 9.1

#qTest Manager API Version 8.6 - 9.1

OpenAPI spec version: 8.6 - 9.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TestlogApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TestlogApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TestlogApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TestlogApi' do
    it 'should create an instact of TestlogApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TestlogApi)
    end
  end

  # unit tests for get_last_run_log
  # Gets the latest Test Log of a Test Run
  # To retrieve a Test Run&#39;s latest test result  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param project_id ID of the project
  # @param test_run_id ID of the Test Run
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand Valid values include:   i)&lt;em&gt;testcase&lt;/em&gt; - to expand the associated Test Case and its Test Steps in the response;   ii) &lt;em&gt;teststeplog.teststep&lt;/em&gt; - to expand results of each Test Steps in the response
  # @return [TestLogResource]
  describe 'get_last_run_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_test_log
  # Gets a Test Log of a Test Run
  # To retrieve a specific Test Log of a Test Run
  # @param project_id ID of the project
  # @param id ID of the Test Log
  # @param test_run_id ID of the Test Run
  # @param [Hash] opts the optional parameters
  # @return [TestLogResource]
  describe 'get_test_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_test_logs_list
  # Gets all Test Logs of a Test Run
  # To retrieve all Test Logs of a Test Run  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 7.6
  # @param project_id ID of the project
  # @param test_run_id ID of the Test Run
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The result is paginated. By the default, the number of objects in each page is 100 if this is omitted. You can specify your custom number (up to 999) in this parameter
  # @option opts [Integer] :page By default the first page is returned but you can specify any page number to retrieve objects
  # @return [TestLogListResource]
  describe 'get_test_logs_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_automation_log
  # Modify an Automation Test Log
  # To modify test result of a &lt;em&gt;automation&lt;/em&gt; Test Run  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 9.1.5+
  # @param project_id ID of the project
  # @param body &lt;em&gt;status (required):&lt;/em&gt; automation status values which are mapped in qTest Manager&#39;s Automation Settings  &lt;em&gt;exe_start_date (required):&lt;/em&gt; the execution&#39;s starting time  &lt;em&gt;exe_end_date (required):&lt;/em&gt; the execution&#39;s ending time  &lt;em&gt;note:&lt;/em&gt; execution note  &lt;em&gt;properties:&lt;/em&gt; array of fields and values of the Test Log that need to be updated  &lt;em&gt;test_step_logs:&lt;/em&gt; a JSONArray of TestStepLog objects  &lt;strong&gt;NOTE:&lt;/strong&gt; &lt;ul&gt;&lt;li&gt;You can only modify test logs which were submitted by you. The project admin can modify any test logs within his project&lt;/li&gt;&lt;li&gt;Test Step order is required in the test_step_logs array. You cannot specify a different order from the original submitted test log&lt;/li&gt;&lt;li&gt;You cannot modify Test Step Description and Expected Result&lt;/li&gt;&lt;li&gt;You cannot modify the following fields: Test Case Version, Automation Content, CI Tools, Build Number and Build URL&lt;/li&gt;&lt;/ul&gt;
  # @param test_run_id ID of the Test Run
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :encode_note encodeNote
  # @return [Object]
  describe 'modify_automation_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_test_log
  # Modify a Manual Test Log
  # To modify test result of an &lt;em&gt;manual&lt;/em&gt; Test Run  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 9.1.5+
  # @param project_id ID of the project
  # @param body &lt;em&gt;status (required):&lt;/em&gt; Status of the Test Log as defined in the projectâs Field Settings  &lt;em&gt;exe_start_date (required):&lt;/em&gt; the execution&#39;s starting time  &lt;em&gt;exe_end_date (required):&lt;/em&gt; the execution&#39;s ending time  &lt;em&gt;note:&lt;/em&gt; execution note  &lt;em&gt;properties:&lt;/em&gt; array of fields and values of the Test Log that need to be updated  &lt;em&gt;test_step_logs:&lt;/em&gt; a JSONArray of TestStepLog objects  &lt;strong&gt;NOTE:&lt;/strong&gt; &lt;ul&gt;&lt;li&gt;You can only modify test logs which were submitted by you. The project admin can modify any test logs within his project&lt;/li&gt;&lt;li&gt;Test Step order is required in the test_step_logs array. You cannot specify a different order from the original submitted test log&lt;/li&gt;&lt;li&gt;You cannot modify Test Step Description and Expected Result&lt;/li&gt;&lt;li&gt;You cannot modify the following fields: Test Case Version, CI Tools, Build Number and Build URL&lt;/li&gt;&lt;/ul&gt;
  # @param test_run_id ID of the Test Run
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [TestLogResource]
  describe 'modify_test_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_automation_log
  # Submits an Automation Test Log
  # To submit test result of an Automation Test Run  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param project_id ID of the project
  # @param body &lt;em&gt;status (required):&lt;/em&gt; automation status values which are mapped in qTest Manager&#39;s Automation Settings  &lt;em&gt;exe_start_date (required):&lt;/em&gt; the execution&#39;s starting time  &lt;em&gt;exe_end_date (required)&lt;/em&gt; the execution&#39;s ending time  &lt;em&gt;name (required)&lt;/em&gt; name of the Test Run or Test Case  &lt;em&gt;automation_content (required):&lt;/em&gt; a string that uniquely identifies an Automation Test Case  &lt;em&gt;attachments:&lt;/em&gt; a JSONArray of Attachment objects  &lt;em&gt;note:&lt;/em&gt; execution note  &lt;em&gt;test_case_version_id:&lt;/em&gt; ID of the associated Test Case&#39;s version  &lt;em&gt;test_step_logs:&lt;/em&gt; a JSONArray of TestStepLog objects
  # @param test_run_id ID of the Test Run  1/ If it is greater than 0 (zero), test result will be submitted to the specific Test Run  If it is 0 (zero), test result will be submitted to a new Test Run
  # @param [Hash] opts the optional parameters
  # @option opts [String] :suite_per_day &lt;em&gt;suitePerDay&#x3D;true&lt;/em&gt; - the newly created Test Run will be located under a Test Suite named under the execution date specified in parameter &lt;em&gt;suiteDate&lt;/em&gt;, eg: &lt;em&gt;Automation 2014-12-09&lt;/em&gt;  &lt;em&gt;suitePerDay&#x3D;false&lt;/em&gt; - the newly created Test Run will be located under &lt;em&gt;Automation Test Suite&lt;/em&gt;  &lt;strong&gt;IMPORTANT:&lt;/strong&gt; In case you update an existing Test Run, its Test Suite remains unchanged
  # @option opts [String] :suite_date It is required if &lt;em&gt;suitePerDay&lt;/em&gt; is true. Its format is &lt;em&gt;\&quot;yyyymmdd\&quot;&lt;/em&gt;.   The newly created Test Run will be located under a Test Suite named \&quot;Automation yyyy-mm-dd\&quot;, eg: Automation 2014-12-09
  # @option opts [BOOLEAN] :encode_note Specify if the Test Log&#39;s Notes are in HTML format  &lt;em&gt;encodeNote&#x3D;true&lt;/em&gt; - default value. Notes are not in HTML format  &lt;em&gt;encodeNote&#x3D;false:&lt;/em&gt; Notes are in HTML format
  # @option opts [BOOLEAN] :force_update_version 
  # @option opts [String] :agent_id 
  # @option opts [String] :user_id 
  # @return [AutomationTestLogResource]
  describe 'submit_automation_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_automation_test_logs
  # Submits multiple test results
  # To submit Automation Test Logs of multiple Test Runs  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 8.0.2+
  # @param project_id ID of the project
  # @param body &lt;em&gt;test_suite:&lt;/em&gt; ID of the Test Suite where the submitted Test Runs will be located  &lt;em&gt;parent_module:&lt;/em&gt; In case there has been no Test Case associated with the submitted Test Run, a new automation Test Case will be created. The new Test Cases are located under a module named &lt;em&gt;Automation&lt;/em&gt;. If you specify an ID for parent_module, the &lt;em&gt;Automation&lt;/em&gt; module will be located under the specified module. Otherwise, the &lt;em&gt;Automation&lt;/em&gt; module is located directly under root  &lt;em&gt;execution_date (required):&lt;/em&gt; Execution date in &lt;em&gt;YYYY-mm-dd&lt;/em&gt; format  &lt;em&gt;test_logs (required):&lt;/em&gt; The array of TestLog objects. The below are TestLog attributes  &lt;em&gt;status (required):&lt;/em&gt; The automation result values that were mapped with Test Run Result in qTest automation settings  &lt;em&gt;exe_start_date (required):&lt;/em&gt; Execution start time  &lt;em&gt;exe_end_date (required):&lt;/em&gt; Execution end time  &lt;em&gt;name (required):&lt;/em&gt; Test Run name  &lt;em&gt;automation_content (required):&lt;/em&gt; An XML formatted string that contains the class test/ group test/ package test  &lt;em&gt;attachments:&lt;/em&gt; An array of the Attachment objects  &lt;em&gt;note:&lt;/em&gt; Test Log note  &lt;em&gt;test_step_logs:&lt;/em&gt; An of TestStepLog objects. You can specify Test Steps&#39; order in the requrest. It must be continous series of numbers, starting from zero, or it will throw an error. The order will be used when the Test Case is created or updated in qTest. If the order is omitted, Test Steps will be alphabetically sorted when creating or updating Test Case
  # @param type Always input &lt;em&gt;automation&lt;/em&gt; for this parameter
  # @param test_run_id This should always be &lt;strong&gt;0 (zero)&lt;/strong&gt; or else it will throw an exception
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :escape_xml &lt;em&gt;escapeXml&#x3D;true&lt;/em&gt; - default value. &amp;gt and &amp;lt in &lt;em&gt;Automation Content&lt;/em&gt; field are encoded  &lt;em&gt;escapeXml&#x3D;false&lt;/em&gt; - the Automation Content field is not encoded
  # @option opts [String] :user_id 
  # @return [QueueProcessingResponse]
  describe 'submit_automation_test_logs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_automation_test_logs_0
  # Submits multiple test results and specifies Test Design and Test Execution tree structures
  # This is the extended version of this API &lt;strong&gt;POST /api/v3.1/projects/{projectId}/test-runs/{testRunId}/auto-test-logs&lt;/strong&gt;. It allows submitting multiple test logs in one API request, and creating Test Cases and Test Runs in hierarchical structure which is specified in the request body  &lt;strong&gt;Important:&lt;/strong&gt; This API does not update names and locations of existing Test Cases and Test Runs
  # @param project_id ID of the project
  # @param body &lt;em&gt;test_cycle (required):&lt;/em&gt; PID or ID of the parent Test Cycle in qTest Manager where submitted Test Runs will be located  &lt;em&gt;test_logs (required):&lt;/em&gt; The array of TestLog objects. The below are TestLog attributes  &lt;strong&gt;TestLog attributes:&lt;/strong&gt;  - &lt;em&gt;test_case_version_id:&lt;/em&gt; ID of the associated Test Case&#39;s version. In case the Test Run has not existed, this field should not be included or it will cause an error  - &lt;em&gt;status (required):&lt;/em&gt; The automation result values that were mapped with Test Run Result in qTest automation settings  - &lt;em&gt;exe_start_date (required):&lt;/em&gt; Execution start time  - &lt;em&gt;exe_end_date (required):&lt;/em&gt; Execution end time  - &lt;em&gt;module_names (required):&lt;/em&gt; an array of folder names which will be used when creating hierarchical structure in Test Design and Test Execution trees. In Test Design tree, the first folder will be created as a Module directly under the tree root. Other folders will be created as sub-Modules under their preceding folders in the array. In Test Execution tree, the first folder will be created as a Test Cycle directly under the parent Test Cycle which is specified in the API request. Other folders will be created as sub Test Cycles under their preceding folders in the array. If there is a folder in the tree with matching name and location, the API will not create a duplicate one  - &lt;em&gt;name (required):&lt;/em&gt; It will be used when &lt;em&gt;creating&lt;/em&gt; Test Cases and Test Runs as their names. It will not be used for updating Test Case and Test Run names  - &lt;em&gt;automation_content (required):&lt;/em&gt; Specify a unique string to each Test Case. It acts as Test Case fingerprint. Before adding a Test Log, qTest Manager will look up Automation Content of existing Test Cases. If it can find an existing Test Case, the Test Log will be associated with that Test Case. Otherwise, a new Test Case will be created with the submitted Test Log. It is also be used when creating Test Runs. If qTest Manager finds an existing Test Run with matching Automation Content and location in Test Execution tree, it will not create a duplicate one. If there is an existing Test Run with matching Automation Content but it is located in different Test Cycles, qTest Manager will create a new Test Run in the specified folder  - &lt;em&gt;attachments:&lt;/em&gt; an array of the Attachment objects  - &lt;em&gt;test_step_logs:&lt;/em&gt; an array of TestStepLog objects. You can specify Test Steps&#39; order in the request. It must be continous series of numbers, starting from zero, or it will throw an error. The order will be used when the Test Case is created or updated in qTest. If the order is omitted, Test Steps will be alphabetically sorted when creating or updating Test Case  &lt;strong&gt;Test Step Log attributes&lt;/strong&gt;  - &lt;em&gt;description (required):&lt;/em&gt; Description of the Test Step  - &lt;em&gt;expected_result (required):&lt;/em&gt; Expected result of the Test Step  - &lt;em&gt;actual_result (required):&lt;/em&gt; Actual result of the Test Step  - &lt;em&gt;status (required):&lt;/em&gt; The automation result values that were mapped with Test Run Result in qTest automation settings  - &lt;em&gt;order:&lt;/em&gt; Specify the order of Test Steps. It must be continous series of numbers, starting from zero, or it will throw an error. The order will be used when the Test Case is created or updated in qTest. If the order is omitted, Test Steps will be alphabetically sorted when creating or updating Test Case
  # @param type always use &lt;em&gt;type&#x3D;automation&lt;/em&gt; for this parameter
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :escape_xml &lt;em&gt;escapeXml&#x3D;true&lt;/em&gt; - default value. &amp;gt and &amp;lt in &lt;em&gt;Automation Content&lt;/em&gt; field are encoded  &lt;em&gt;escapeXml&#x3D;false&lt;/em&gt; - the Automation Content field is not encoded
  # @option opts [String] :user_id 
  # @return [QueueProcessingResponse]
  describe 'submit_automation_test_logs_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_test_log
  # Submits a Manual Test Log
  # To submit test result of a &lt;em&gt;manual&lt;/em&gt; Test Run  &lt;strong&gt;qTest Manager version:&lt;/strong&gt; 4+
  # @param project_id ID of the project
  # @param body &lt;em&gt;status (required):&lt;/em&gt; Status of the Test Log as defined in the project&#39;s Field Settings  &lt;em&gt;test_case_version_id:&lt;/em&gt; ID of the associated Test Case&#39;s version.    If it is omitted, the submitted Test Log will be associated with the Test Case&#39;s latest approved version  &lt;em&gt;exe_start_date (required):&lt;/em&gt; time when the test is executed  &lt;em&gt;exe_end_date (required):&lt;/em&gt; time when the test is finished  &lt;em&gt;attachments:&lt;/em&gt; the Test Log&#39;s attachments  &lt;em&gt;test_step_logs:&lt;/em &gt; If the associated Test Case is calling Test Steps from another Test Case, the \&quot;called_test_case_id\&quot; and \&quot;parent_test_step_id\&quot; must be included in the request body
  # @param test_run_id ID of the Test Run
  # @param [Hash] opts the optional parameters
  # @return [TestLogResource]
  describe 'submit_test_log test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for track
  # Gets a Batch Test Log Submission job&#39;s state
  # To check the state of a Batch Test Log Submission job.   When you submit test results to qTest Manager using:  &lt;strong&gt;POST /api/v3.1/projects/{projectId}/test-runs/{testRunId}/auto-test-logs?type&#x3D;automation&lt;/strong&gt;  or &lt;strong&gt;POST /api/v3/projects/{projectId}/auto-test-logs?type&#x3D;automation&lt;/strong&gt;, their response include a job ID.  You will need to use this API and the returned ID to check if the submission job has completed.  Job states include &lt;i&gt;IN_WAITING&lt;/i&gt;, &lt;i&gt;IN_PROCESSING&lt;/i&gt;, &lt;i&gt;FAILED&lt;/i&gt;, &lt;i&gt;PENDING&lt;/i&gt; and &lt;i&gt;SUCCESS&lt;/i&gt;
  # @param id The ID of the submission job.   It is included in the response of these 2 APIs:  &lt;strong&gt;POST /api/v3.1/projects/{projectId}/test-runs/{testRunId}/auto-test-logs?type&#x3D;automation&lt;/strong&gt;   or &lt;strong&gt;POST /api/v3/projects/{projectId}/auto-test-logs?type&#x3D;automation&lt;/strong&gt;
  # @param [Hash] opts the optional parameters
  # @return [QueueProcessingResponse]
  describe 'track test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
