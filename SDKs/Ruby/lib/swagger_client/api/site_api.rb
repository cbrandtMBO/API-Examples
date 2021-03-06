=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'uri'

module SwaggerClient
  class SiteApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an activation code for a site.
    # Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.    See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.    Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @return [GetActivationCodeResponse]
    def site_get_activation_code(version, opts = {})
      data, _status_code, _headers = site_get_activation_code_with_http_info(version, opts)
      data
    end

    # Get an activation code for a site.
    # Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.    See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.    Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @return [Array<(GetActivationCodeResponse, Fixnum, Hash)>] GetActivationCodeResponse data, response status code and response headers
    def site_get_activation_code_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SiteApi.site_get_activation_code ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SiteApi.site_get_activation_code"
      end
      # resource path
      local_var_path = '/public/v{version}/site/activationcode'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetActivationCodeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SiteApi#site_get_activation_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get locations for a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @return [GetLocationsResponse]
    def site_get_locations(site_id, version, opts = {})
      data, _status_code, _headers = site_get_locations_with_http_info(site_id, version, opts)
      data
    end

    # Get locations for a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @return [Array<(GetLocationsResponse, Fixnum, Hash)>] GetLocationsResponse data, response status code and response headers
    def site_get_locations_with_http_info(site_id, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SiteApi.site_get_locations ...'
      end
      # verify the required parameter 'site_id' is set
      if @api_client.config.client_side_validation && site_id.nil?
        fail ArgumentError, "Missing the required parameter 'site_id' when calling SiteApi.site_get_locations"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SiteApi.site_get_locations"
      end
      # resource path
      local_var_path = '/public/v{version}/site/locations'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'siteId'] = site_id
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetLocationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SiteApi#site_get_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get service categories offered at a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [BOOLEAN] :request_online_only If &#x60;true&#x60;, filters results to show only those programs that are shown online.&lt;br /&gt;  If &#x60;false&#x60;, all programs are returned.&lt;br /&gt;  Default: **false**
    # @option opts [String] :request_schedule_type A schedule type used to filter the returned results.
    # @return [GetProgramsResponse]
    def site_get_programs(site_id, version, opts = {})
      data, _status_code, _headers = site_get_programs_with_http_info(site_id, version, opts)
      data
    end

    # Get service categories offered at a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [BOOLEAN] :request_online_only If &#x60;true&#x60;, filters results to show only those programs that are shown online.&lt;br /&gt;  If &#x60;false&#x60;, all programs are returned.&lt;br /&gt;  Default: **false**
    # @option opts [String] :request_schedule_type A schedule type used to filter the returned results.
    # @return [Array<(GetProgramsResponse, Fixnum, Hash)>] GetProgramsResponse data, response status code and response headers
    def site_get_programs_with_http_info(site_id, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SiteApi.site_get_programs ...'
      end
      # verify the required parameter 'site_id' is set
      if @api_client.config.client_side_validation && site_id.nil?
        fail ArgumentError, "Missing the required parameter 'site_id' when calling SiteApi.site_get_programs"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SiteApi.site_get_programs"
      end
      if @api_client.config.client_side_validation && opts[:'request_schedule_type'] && !['All', 'Class', 'Enrollment', 'Appointment', 'Resource', 'Media', 'Arrival'].include?(opts[:'request_schedule_type'])
        fail ArgumentError, 'invalid value for "request_schedule_type", must be one of All, Class, Enrollment, Appointment, Resource, Media, Arrival'
      end
      # resource path
      local_var_path = '/public/v{version}/site/programs'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?
      query_params[:'request.onlineOnly'] = opts[:'request_online_only'] if !opts[:'request_online_only'].nil?
      query_params[:'request.scheduleType'] = opts[:'request_schedule_type'] if !opts[:'request_schedule_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'siteId'] = site_id
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetProgramsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SiteApi#site_get_programs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get resources used at a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [DateTime] :request_end_date_time The time the resource ends. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_location_id The location of the resource. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.&lt;br /&gt;  Default: **all**
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Array<Integer>] :request_session_type_ids List of session type IDs.&lt;br /&gt;  Default: **all**
    # @option opts [DateTime] :request_start_date_time The time the resource starts. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.
    # @return [GetResourcesResponse]
    def site_get_resources(site_id, version, opts = {})
      data, _status_code, _headers = site_get_resources_with_http_info(site_id, version, opts)
      data
    end

    # Get resources used at a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [DateTime] :request_end_date_time The time the resource ends. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_location_id The location of the resource. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.&lt;br /&gt;  Default: **all**
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Array<Integer>] :request_session_type_ids List of session type IDs.&lt;br /&gt;  Default: **all**
    # @option opts [DateTime] :request_start_date_time The time the resource starts. This parameter is ignored if &#x60;EndDateTime&#x60; or &#x60;LocationID&#x60; is not set.
    # @return [Array<(GetResourcesResponse, Fixnum, Hash)>] GetResourcesResponse data, response status code and response headers
    def site_get_resources_with_http_info(site_id, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SiteApi.site_get_resources ...'
      end
      # verify the required parameter 'site_id' is set
      if @api_client.config.client_side_validation && site_id.nil?
        fail ArgumentError, "Missing the required parameter 'site_id' when calling SiteApi.site_get_resources"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SiteApi.site_get_resources"
      end
      # resource path
      local_var_path = '/public/v{version}/site/resources'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.endDateTime'] = opts[:'request_end_date_time'] if !opts[:'request_end_date_time'].nil?
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.locationId'] = opts[:'request_location_id'] if !opts[:'request_location_id'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?
      query_params[:'request.sessionTypeIds'] = @api_client.build_collection_param(opts[:'request_session_type_ids'], :multi) if !opts[:'request_session_type_ids'].nil?
      query_params[:'request.startDateTime'] = opts[:'request_start_date_time'] if !opts[:'request_start_date_time'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'siteId'] = site_id
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetResourcesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SiteApi#site_get_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the session types used at a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [BOOLEAN] :request_online_only When &#x60;true&#x60;, indicates that only the session types that can be booked online should be returned.&lt;br /&gt;  Default: **false**
    # @option opts [Array<Integer>] :request_program_i_ds Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return.
    # @return [GetSessionTypesResponse]
    def site_get_session_types(site_id, version, opts = {})
      data, _status_code, _headers = site_get_session_types_with_http_info(site_id, version, opts)
      data
    end

    # Get the session types used at a site.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [BOOLEAN] :request_online_only When &#x60;true&#x60;, indicates that only the session types that can be booked online should be returned.&lt;br /&gt;  Default: **false**
    # @option opts [Array<Integer>] :request_program_i_ds Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return.
    # @return [Array<(GetSessionTypesResponse, Fixnum, Hash)>] GetSessionTypesResponse data, response status code and response headers
    def site_get_session_types_with_http_info(site_id, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SiteApi.site_get_session_types ...'
      end
      # verify the required parameter 'site_id' is set
      if @api_client.config.client_side_validation && site_id.nil?
        fail ArgumentError, "Missing the required parameter 'site_id' when calling SiteApi.site_get_session_types"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SiteApi.site_get_session_types"
      end
      # resource path
      local_var_path = '/public/v{version}/site/sessiontypes'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?
      query_params[:'request.onlineOnly'] = opts[:'request_online_only'] if !opts[:'request_online_only'].nil?
      query_params[:'request.programIDs'] = @api_client.build_collection_param(opts[:'request_program_i_ds'], :multi) if !opts[:'request_program_i_ds'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'siteId'] = site_id
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSessionTypesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SiteApi#site_get_session_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all sites that can be accessed by an API Key.
    # Gets a list of sites that the developer has permission to view.  * Passing in no `SiteIds` returns all sites that the developer has access to.  * Passing in one `SiteIds` returns more detailed information about the specified site.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Array<Integer>] :request_site_ids List of the requested site IDs. When omitted, returns all sites that the source has access to.
    # @return [GetSitesResponse]
    def site_get_sites(version, opts = {})
      data, _status_code, _headers = site_get_sites_with_http_info(version, opts)
      data
    end

    # Get all sites that can be accessed by an API Key.
    # Gets a list of sites that the developer has permission to view.  * Passing in no &#x60;SiteIds&#x60; returns all sites that the developer has access to.  * Passing in one &#x60;SiteIds&#x60; returns more detailed information about the specified site.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Array<Integer>] :request_site_ids List of the requested site IDs. When omitted, returns all sites that the source has access to.
    # @return [Array<(GetSitesResponse, Fixnum, Hash)>] GetSitesResponse data, response status code and response headers
    def site_get_sites_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SiteApi.site_get_sites ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SiteApi.site_get_sites"
      end
      # resource path
      local_var_path = '/public/v{version}/site/sites'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?
      query_params[:'request.siteIds'] = @api_client.build_collection_param(opts[:'request_site_ids'], :multi) if !opts[:'request_site_ids'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSitesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SiteApi#site_get_sites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
