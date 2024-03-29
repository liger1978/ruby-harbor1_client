=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor1Client
  class RobotAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all robot accounts of specified project
    # Get all robot accounts of specified project
    # @param project_id Relevant project ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<RobotAccount>]
    def projects_project_id_robots_get(project_id, opts = {})
      data, _status_code, _headers = projects_project_id_robots_get_with_http_info(project_id, opts)
      data
    end

    # Get all robot accounts of specified project
    # Get all robot accounts of specified project
    # @param project_id Relevant project ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RobotAccount>, Fixnum, Hash)>] Array<RobotAccount> data, response status code and response headers
    def projects_project_id_robots_get_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RobotAccountApi.projects_project_id_robots_get ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling RobotAccountApi.projects_project_id_robots_get"
      end
      # resource path
      local_var_path = '/projects/{project_id}/robots'.sub('{' + 'project_id' + '}', project_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<RobotAccount>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RobotAccountApi#projects_project_id_robots_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a robot account for project
    # Create a robot account for project
    # @param project_id Relevant project ID.
    # @param robot Request body of creating a robot account.
    # @param [Hash] opts the optional parameters
    # @return [RobotAccountPostRep]
    def projects_project_id_robots_post(project_id, robot, opts = {})
      data, _status_code, _headers = projects_project_id_robots_post_with_http_info(project_id, robot, opts)
      data
    end

    # Create a robot account for project
    # Create a robot account for project
    # @param project_id Relevant project ID.
    # @param robot Request body of creating a robot account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RobotAccountPostRep, Fixnum, Hash)>] RobotAccountPostRep data, response status code and response headers
    def projects_project_id_robots_post_with_http_info(project_id, robot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RobotAccountApi.projects_project_id_robots_post ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling RobotAccountApi.projects_project_id_robots_post"
      end
      # verify the required parameter 'robot' is set
      if @api_client.config.client_side_validation && robot.nil?
        fail ArgumentError, "Missing the required parameter 'robot' when calling RobotAccountApi.projects_project_id_robots_post"
      end
      # resource path
      local_var_path = '/projects/{project_id}/robots'.sub('{' + 'project_id' + '}', project_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(robot)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RobotAccountPostRep')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RobotAccountApi#projects_project_id_robots_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the specified robot account
    # Delete the specified robot account
    # @param project_id Relevant project ID.
    # @param robot_id The ID of robot account.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def projects_project_id_robots_robot_id_delete(project_id, robot_id, opts = {})
      projects_project_id_robots_robot_id_delete_with_http_info(project_id, robot_id, opts)
      nil
    end

    # Delete the specified robot account
    # Delete the specified robot account
    # @param project_id Relevant project ID.
    # @param robot_id The ID of robot account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def projects_project_id_robots_robot_id_delete_with_http_info(project_id, robot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RobotAccountApi.projects_project_id_robots_robot_id_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling RobotAccountApi.projects_project_id_robots_robot_id_delete"
      end
      # verify the required parameter 'robot_id' is set
      if @api_client.config.client_side_validation && robot_id.nil?
        fail ArgumentError, "Missing the required parameter 'robot_id' when calling RobotAccountApi.projects_project_id_robots_robot_id_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/robots/{robot_id}'.sub('{' + 'project_id' + '}', project_id.to_s).sub('{' + 'robot_id' + '}', robot_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RobotAccountApi#projects_project_id_robots_robot_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the infor of the specified robot account.
    # Return the infor of the specified robot account.
    # @param project_id Relevant project ID.
    # @param robot_id The ID of robot account.
    # @param [Hash] opts the optional parameters
    # @return [RobotAccount]
    def projects_project_id_robots_robot_id_get(project_id, robot_id, opts = {})
      data, _status_code, _headers = projects_project_id_robots_robot_id_get_with_http_info(project_id, robot_id, opts)
      data
    end

    # Return the infor of the specified robot account.
    # Return the infor of the specified robot account.
    # @param project_id Relevant project ID.
    # @param robot_id The ID of robot account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RobotAccount, Fixnum, Hash)>] RobotAccount data, response status code and response headers
    def projects_project_id_robots_robot_id_get_with_http_info(project_id, robot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RobotAccountApi.projects_project_id_robots_robot_id_get ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling RobotAccountApi.projects_project_id_robots_robot_id_get"
      end
      # verify the required parameter 'robot_id' is set
      if @api_client.config.client_side_validation && robot_id.nil?
        fail ArgumentError, "Missing the required parameter 'robot_id' when calling RobotAccountApi.projects_project_id_robots_robot_id_get"
      end
      # resource path
      local_var_path = '/projects/{project_id}/robots/{robot_id}'.sub('{' + 'project_id' + '}', project_id.to_s).sub('{' + 'robot_id' + '}', robot_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RobotAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RobotAccountApi#projects_project_id_robots_robot_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update status of robot account.
    # Used to disable/enable a specified robot account.
    # @param project_id Relevant project ID.
    # @param robot_id The ID of robot account.
    # @param robot Request body of enable/disable a robot account.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def projects_project_id_robots_robot_id_put(project_id, robot_id, robot, opts = {})
      projects_project_id_robots_robot_id_put_with_http_info(project_id, robot_id, robot, opts)
      nil
    end

    # Update status of robot account.
    # Used to disable/enable a specified robot account.
    # @param project_id Relevant project ID.
    # @param robot_id The ID of robot account.
    # @param robot Request body of enable/disable a robot account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def projects_project_id_robots_robot_id_put_with_http_info(project_id, robot_id, robot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RobotAccountApi.projects_project_id_robots_robot_id_put ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling RobotAccountApi.projects_project_id_robots_robot_id_put"
      end
      # verify the required parameter 'robot_id' is set
      if @api_client.config.client_side_validation && robot_id.nil?
        fail ArgumentError, "Missing the required parameter 'robot_id' when calling RobotAccountApi.projects_project_id_robots_robot_id_put"
      end
      # verify the required parameter 'robot' is set
      if @api_client.config.client_side_validation && robot.nil?
        fail ArgumentError, "Missing the required parameter 'robot' when calling RobotAccountApi.projects_project_id_robots_robot_id_put"
      end
      # resource path
      local_var_path = '/projects/{project_id}/robots/{robot_id}'.sub('{' + 'project_id' + '}', project_id.to_s).sub('{' + 'robot_id' + '}', robot_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(robot)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RobotAccountApi#projects_project_id_robots_robot_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
