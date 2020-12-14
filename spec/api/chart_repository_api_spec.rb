=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor1Client::ChartRepositoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChartRepositoryApi' do
  before do
    # run before each test
    @instance = Harbor1Client::ChartRepositoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChartRepositoryApi' do
    it 'should create an instance of ChartRepositoryApi' do
      expect(@instance).to be_instance_of(Harbor1Client::ChartRepositoryApi)
    end
  end

  # unit tests for chartrepo_charts_post
  # Upload a chart file to the defult &#39;library&#39; project.
  # Upload a chart file to the default &#39;library&#39; project. Uploading together with the prov file at the same time is also supported.
  # @param chart The chart file
  # @param [Hash] opts the optional parameters
  # @option opts [File] :prov The provance file
  # @return [nil]
  describe 'chartrepo_charts_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_health_get
  # Check the health of chart repository service.
  # Check the health of chart repository service.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'chartrepo_health_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_get
  # Get all the charts under the specified project
  # Get all the charts under the specified project
  # @param repo The project name
  # @param [Hash] opts the optional parameters
  # @return [Array<ChartInfoEntry>]
  describe 'chartrepo_repo_charts_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_delete
  # Delete all the versions of the specified chart
  # Delete all the versions of the specified chart
  # @param repo The project name
  # @param name The chart name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_get
  # Get all the versions of the specified chart
  # Get all the versions of the specified chart
  # @param repo The project name
  # @param name The chart name
  # @param [Hash] opts the optional parameters
  # @return [ChartVersions]
  describe 'chartrepo_repo_charts_name_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_delete
  # Delete the specified chart version
  # Delete the specified chart version
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_get
  # Get the specified chart version
  # Get the specified chart version
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param [Hash] opts the optional parameters
  # @return [ChartVersionDetails]
  describe 'chartrepo_repo_charts_name_version_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_labels_get
  # Return the attahced labels of chart.
  # Return the attahced labels of the specified chart version.
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_labels_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_labels_id_delete
  # Remove label from chart.
  # Remove label from the specified chart version.
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param id The label ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_labels_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_name_version_labels_post
  # Mark label to chart.
  # Mark label to the specified chart version.
  # @param repo The project name
  # @param name The chart name
  # @param version The chart version
  # @param label The label being marked to the chart version
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_charts_name_version_labels_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_charts_post
  # Upload a chart file to the specified project.
  # Upload a chart file to the specified project. With this API, the corresponding provance file can be uploaded together with chart file at once.
  # @param repo The project name
  # @param chart The chart file
  # @param [Hash] opts the optional parameters
  # @option opts [File] :prov The provance file
  # @return [nil]
  describe 'chartrepo_repo_charts_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for chartrepo_repo_prov_post
  # Upload a provance file to the specified project.
  # Upload a provance file to the specified project. The provance file should be targeted for an existing chart file.
  # @param repo The project name
  # @param prov The provance file
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'chartrepo_repo_prov_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
