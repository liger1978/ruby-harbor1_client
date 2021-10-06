=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 1.10.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor1Client
  class ScanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the scan report
    # Retrieve the scan report for the artifact identified by the repo_name and tag. 
    # @param repo_name Repository name
    # @param tag Tag name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept Mimetype in header. e.g: \&quot;application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0\&quot; 
    # @return [Report]
    def repositories_repo_name_tags_tag_scan_get(repo_name, tag, opts = {})
      data, _status_code, _headers = repositories_repo_name_tags_tag_scan_get_with_http_info(repo_name, tag, opts)
      data
    end

    # Get the scan report
    # Retrieve the scan report for the artifact identified by the repo_name and tag. 
    # @param repo_name Repository name
    # @param tag Tag name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept Mimetype in header. e.g: \&quot;application/vnd.scanner.adapter.vuln.report.harbor+json; version&#x3D;1.0\&quot; 
    # @return [Array<(Report, Fixnum, Hash)>] Report data, response status code and response headers
    def repositories_repo_name_tags_tag_scan_get_with_http_info(repo_name, tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.repositories_repo_name_tags_tag_scan_get ...'
      end
      # verify the required parameter 'repo_name' is set
      if @api_client.config.client_side_validation && repo_name.nil?
        fail ArgumentError, "Missing the required parameter 'repo_name' when calling ScanApi.repositories_repo_name_tags_tag_scan_get"
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling ScanApi.repositories_repo_name_tags_tag_scan_get"
      end
      # resource path
      local_var_path = '/repositories/{repo_name}/tags/{tag}/scan'.sub('{' + 'repo_name' + '}', repo_name.to_s).sub('{' + 'tag' + '}', tag.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept'] = opts[:'accept'] if !opts[:'accept'].nil?

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
        :return_type => 'Report')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#repositories_repo_name_tags_tag_scan_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Scan the image.
    # Trigger a scan targeting the artifact identified by the repo_name and tag. 
    # @param repo_name Repository name
    # @param tag Tag name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def repositories_repo_name_tags_tag_scan_post(repo_name, tag, opts = {})
      repositories_repo_name_tags_tag_scan_post_with_http_info(repo_name, tag, opts)
      nil
    end

    # Scan the image.
    # Trigger a scan targeting the artifact identified by the repo_name and tag. 
    # @param repo_name Repository name
    # @param tag Tag name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def repositories_repo_name_tags_tag_scan_post_with_http_info(repo_name, tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.repositories_repo_name_tags_tag_scan_post ...'
      end
      # verify the required parameter 'repo_name' is set
      if @api_client.config.client_side_validation && repo_name.nil?
        fail ArgumentError, "Missing the required parameter 'repo_name' when calling ScanApi.repositories_repo_name_tags_tag_scan_post"
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling ScanApi.repositories_repo_name_tags_tag_scan_post"
      end
      # resource path
      local_var_path = '/repositories/{repo_name}/tags/{tag}/scan'.sub('{' + 'repo_name' + '}', repo_name.to_s).sub('{' + 'tag' + '}', tag.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#repositories_repo_name_tags_tag_scan_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get scan log
    # Get the log text stream for the given artifact and scan action.
    # @param repo_name Repository name
    # @param tag Tag name
    # @param uuid the scan unique identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def repositories_repo_name_tags_tag_scan_uuid_log_get(repo_name, tag, uuid, opts = {})
      data, _status_code, _headers = repositories_repo_name_tags_tag_scan_uuid_log_get_with_http_info(repo_name, tag, uuid, opts)
      data
    end

    # Get scan log
    # Get the log text stream for the given artifact and scan action.
    # @param repo_name Repository name
    # @param tag Tag name
    # @param uuid the scan unique identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def repositories_repo_name_tags_tag_scan_uuid_log_get_with_http_info(repo_name, tag, uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.repositories_repo_name_tags_tag_scan_uuid_log_get ...'
      end
      # verify the required parameter 'repo_name' is set
      if @api_client.config.client_side_validation && repo_name.nil?
        fail ArgumentError, "Missing the required parameter 'repo_name' when calling ScanApi.repositories_repo_name_tags_tag_scan_uuid_log_get"
      end
      # verify the required parameter 'tag' is set
      if @api_client.config.client_side_validation && tag.nil?
        fail ArgumentError, "Missing the required parameter 'tag' when calling ScanApi.repositories_repo_name_tags_tag_scan_uuid_log_get"
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ScanApi.repositories_repo_name_tags_tag_scan_uuid_log_get"
      end
      # resource path
      local_var_path = '/repositories/{repo_name}/tags/{tag}/scan/{uuid}/log'.sub('{' + 'repo_name' + '}', repo_name.to_s).sub('{' + 'tag' + '}', tag.to_s).sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
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
        @api_client.config.logger.debug "API called: ScanApi#repositories_repo_name_tags_tag_scan_uuid_log_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metrics of the latest scan all process
    # Get the metrics of the latest scan all process
    # @param [Hash] opts the optional parameters
    # @return [Stats]
    def scans_all_metrics_get(opts = {})
      data, _status_code, _headers = scans_all_metrics_get_with_http_info(opts)
      data
    end

    # Get the metrics of the latest scan all process
    # Get the metrics of the latest scan all process
    # @param [Hash] opts the optional parameters
    # @return [Array<(Stats, Fixnum, Hash)>] Stats data, response status code and response headers
    def scans_all_metrics_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scans_all_metrics_get ...'
      end
      # resource path
      local_var_path = '/scans/all/metrics'

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
        :return_type => 'Stats')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scans_all_metrics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metrics of the latest scheduled scan all process
    # Get the metrics of the latest scheduled scan all process
    # @param [Hash] opts the optional parameters
    # @return [Stats]
    def scans_schedule_metrics_get(opts = {})
      data, _status_code, _headers = scans_schedule_metrics_get_with_http_info(opts)
      data
    end

    # Get the metrics of the latest scheduled scan all process
    # Get the metrics of the latest scheduled scan all process
    # @param [Hash] opts the optional parameters
    # @return [Array<(Stats, Fixnum, Hash)>] Stats data, response status code and response headers
    def scans_schedule_metrics_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scans_schedule_metrics_get ...'
      end
      # resource path
      local_var_path = '/scans/schedule/metrics'

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
        :return_type => 'Stats')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scans_schedule_metrics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
