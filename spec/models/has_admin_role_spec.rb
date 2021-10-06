=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Harbor1Client::HasAdminRole
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HasAdminRole' do
  before do
    # run before each test
    @instance = Harbor1Client::HasAdminRole.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HasAdminRole' do
    it 'should create an instance of HasAdminRole' do
      expect(@instance).to be_instance_of(Harbor1Client::HasAdminRole)
    end
  end
  describe 'test attribute "has_admin_role"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
