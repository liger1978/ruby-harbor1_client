=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'

# Unit tests for Harbor1Client::SystemApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SystemApi' do
  before do
    # run before each test
    @instance = Harbor1Client::SystemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemApi' do
    it 'should create an instance of SystemApi' do
      expect(@instance).to be_instance_of(Harbor1Client::SystemApi)
    end
  end

  # unit tests for system_cve_whitelist_get
  # Get the system level whitelist of CVE.
  # Get the system level whitelist of CVE.  This API can be called by all authenticated users.
  # @param [Hash] opts the optional parameters
  # @return [CVEWhitelist]
  describe 'system_cve_whitelist_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_cve_whitelist_put
  # Update the system level whitelist of CVE.
  # This API overwrites the system level whitelist of CVE with the list in request body.  Only system Admin has permission to call this API.
  # @param [Hash] opts the optional parameters
  # @option opts [CVEWhitelist] :whitelist The whitelist with new content
  # @return [nil]
  describe 'system_cve_whitelist_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for system_oidc_ping_post
  # Test the OIDC endpoint.
  # Test the OIDC endpoint, the setting of the endpoint is provided in the request.  This API can only be called by system admin.
  # @param endpoint Request body for OIDC endpoint to be tested.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'system_oidc_ping_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
