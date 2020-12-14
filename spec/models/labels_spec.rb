=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Harbor1Client::Labels
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Labels' do
  before do
    # run before each test
    @instance = Harbor1Client::Labels.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Labels' do
    it 'should create an instance of Labels' do
      expect(@instance).to be_instance_of(Harbor1Client::Labels)
    end
  end
end
