=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module Harbor1Client
  class RetentionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Stop a Retention job
    # Stop a Retention job, only support \"stop\" action now.
    # @param id Retention ID.
    # @param eid Retention execution ID.
    # @param action The action, only support \&quot;stop\&quot; now.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def retentions_id_executions_eid_patch(id, eid, action, opts = {})
      retentions_id_executions_eid_patch_with_http_info(id, eid, action, opts)
      nil
    end

    # Stop a Retention job
    # Stop a Retention job, only support \&quot;stop\&quot; action now.
    # @param id Retention ID.
    # @param eid Retention execution ID.
    # @param action The action, only support \&quot;stop\&quot; now.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def retentions_id_executions_eid_patch_with_http_info(id, eid, action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_id_executions_eid_patch ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RetentionApi.retentions_id_executions_eid_patch"
      end
      # verify the required parameter 'eid' is set
      if @api_client.config.client_side_validation && eid.nil?
        fail ArgumentError, "Missing the required parameter 'eid' when calling RetentionApi.retentions_id_executions_eid_patch"
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling RetentionApi.retentions_id_executions_eid_patch"
      end
      # resource path
      local_var_path = '/retentions/{id}/executions/{eid}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'eid' + '}', eid.to_s)

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
      post_body = @api_client.object_to_http_body(action)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_id_executions_eid_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Retention job tasks
    # Get Retention job tasks, each repository as a task.
    # @param id Retention ID.
    # @param eid Retention execution ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<RetentionExecutionTask>]
    def retentions_id_executions_eid_tasks_get(id, eid, opts = {})
      data, _status_code, _headers = retentions_id_executions_eid_tasks_get_with_http_info(id, eid, opts)
      data
    end

    # Get Retention job tasks
    # Get Retention job tasks, each repository as a task.
    # @param id Retention ID.
    # @param eid Retention execution ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RetentionExecutionTask>, Fixnum, Hash)>] Array<RetentionExecutionTask> data, response status code and response headers
    def retentions_id_executions_eid_tasks_get_with_http_info(id, eid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_id_executions_eid_tasks_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RetentionApi.retentions_id_executions_eid_tasks_get"
      end
      # verify the required parameter 'eid' is set
      if @api_client.config.client_side_validation && eid.nil?
        fail ArgumentError, "Missing the required parameter 'eid' when calling RetentionApi.retentions_id_executions_eid_tasks_get"
      end
      # resource path
      local_var_path = '/retentions/{id}/executions/{eid}/tasks'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'eid' + '}', eid.to_s)

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
        :return_type => 'Array<RetentionExecutionTask>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_id_executions_eid_tasks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Retention job task log
    # Get Retention job task log, tags ratain or deletion detail will be shown in a table.
    # @param id Retention ID.
    # @param eid Retention execution ID.
    # @param tid Retention execution ID.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def retentions_id_executions_eid_tasks_tid_get(id, eid, tid, opts = {})
      data, _status_code, _headers = retentions_id_executions_eid_tasks_tid_get_with_http_info(id, eid, tid, opts)
      data
    end

    # Get Retention job task log
    # Get Retention job task log, tags ratain or deletion detail will be shown in a table.
    # @param id Retention ID.
    # @param eid Retention execution ID.
    # @param tid Retention execution ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def retentions_id_executions_eid_tasks_tid_get_with_http_info(id, eid, tid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_id_executions_eid_tasks_tid_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RetentionApi.retentions_id_executions_eid_tasks_tid_get"
      end
      # verify the required parameter 'eid' is set
      if @api_client.config.client_side_validation && eid.nil?
        fail ArgumentError, "Missing the required parameter 'eid' when calling RetentionApi.retentions_id_executions_eid_tasks_tid_get"
      end
      # verify the required parameter 'tid' is set
      if @api_client.config.client_side_validation && tid.nil?
        fail ArgumentError, "Missing the required parameter 'tid' when calling RetentionApi.retentions_id_executions_eid_tasks_tid_get"
      end
      # resource path
      local_var_path = '/retentions/{id}/executions/{eid}/tasks/{tid}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'eid' + '}', eid.to_s).sub('{' + 'tid' + '}', tid.to_s)

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_id_executions_eid_tasks_tid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a Retention job
    # Get a Retention job, job status may be delayed before job service schedule it up.
    # @param id Retention ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<RetentionExecution>]
    def retentions_id_executions_get(id, opts = {})
      data, _status_code, _headers = retentions_id_executions_get_with_http_info(id, opts)
      data
    end

    # Get a Retention job
    # Get a Retention job, job status may be delayed before job service schedule it up.
    # @param id Retention ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RetentionExecution>, Fixnum, Hash)>] Array<RetentionExecution> data, response status code and response headers
    def retentions_id_executions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_id_executions_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RetentionApi.retentions_id_executions_get"
      end
      # resource path
      local_var_path = '/retentions/{id}/executions'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<RetentionExecution>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_id_executions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger a Retention job
    # Trigger a Retention job, if dry_run is True, nothing would be deleted actually.
    # @param id Retention ID.
    # @param action 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def retentions_id_executions_post(id, action, opts = {})
      retentions_id_executions_post_with_http_info(id, action, opts)
      nil
    end

    # Trigger a Retention job
    # Trigger a Retention job, if dry_run is True, nothing would be deleted actually.
    # @param id Retention ID.
    # @param action 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def retentions_id_executions_post_with_http_info(id, action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_id_executions_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RetentionApi.retentions_id_executions_post"
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling RetentionApi.retentions_id_executions_post"
      end
      # resource path
      local_var_path = '/retentions/{id}/executions'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(action)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_id_executions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Retention Policy
    # Get Retention Policy.
    # @param id Retention ID.
    # @param [Hash] opts the optional parameters
    # @return [RetentionPolicy]
    def retentions_id_get(id, opts = {})
      data, _status_code, _headers = retentions_id_get_with_http_info(id, opts)
      data
    end

    # Get Retention Policy
    # Get Retention Policy.
    # @param id Retention ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetentionPolicy, Fixnum, Hash)>] RetentionPolicy data, response status code and response headers
    def retentions_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RetentionApi.retentions_id_get"
      end
      # resource path
      local_var_path = '/retentions/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'RetentionPolicy')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Retention Metadatas
    # Get Retention Metadatas.
    # @param [Hash] opts the optional parameters
    # @return [RetentionMetadata]
    def retentions_metadatas_get(opts = {})
      data, _status_code, _headers = retentions_metadatas_get_with_http_info(opts)
      data
    end

    # Get Retention Metadatas
    # Get Retention Metadatas.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetentionMetadata, Fixnum, Hash)>] RetentionMetadata data, response status code and response headers
    def retentions_metadatas_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_metadatas_get ...'
      end
      # resource path
      local_var_path = '/retentions/metadatas'

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
        :return_type => 'RetentionMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_metadatas_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create Retention Policy
    # Create Retention Policy, you can reference metadatas API for the policy model. You can check project metadatas to find whether a retention policy is already binded. This method should only be called when no retention policy binded to project yet. 
    # @param policy Create Retention Policy successfully.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def retentions_post(policy, opts = {})
      retentions_post_with_http_info(policy, opts)
      nil
    end

    # Create Retention Policy
    # Create Retention Policy, you can reference metadatas API for the policy model. You can check project metadatas to find whether a retention policy is already binded. This method should only be called when no retention policy binded to project yet. 
    # @param policy Create Retention Policy successfully.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def retentions_post_with_http_info(policy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RetentionApi.retentions_post ...'
      end
      # verify the required parameter 'policy' is set
      if @api_client.config.client_side_validation && policy.nil?
        fail ArgumentError, "Missing the required parameter 'policy' when calling RetentionApi.retentions_post"
      end
      # resource path
      local_var_path = '/retentions'

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
      post_body = @api_client.object_to_http_body(policy)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RetentionApi#retentions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
