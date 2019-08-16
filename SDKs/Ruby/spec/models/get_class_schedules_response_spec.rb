=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::GetClassSchedulesResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetClassSchedulesResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::GetClassSchedulesResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetClassSchedulesResponse' do
    it 'should create an instance of GetClassSchedulesResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::GetClassSchedulesResponse)
    end
  end
  describe 'test attribute "pagination_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "class_schedules"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end