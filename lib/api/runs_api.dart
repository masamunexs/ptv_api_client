part of ptv_api_client.api;



class RunsApi {
  final ApiClient apiClient;

  RunsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View all trip/service runs for a specific route ID
  ///
  /// 
  Future<V3RunsResponse> runsForRoute(int routeId, { String token }) async {
    Object postBody;

    // verify required params are set
    if(routeId == null) {
     throw ApiException(400, "Missing required param: routeId");
    }

    // create path and map variables
    String path = "/v3/runs/route/{route_id}".replaceAll("{format}","json").replaceAll("{" + "route_id" + "}", routeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3RunsResponse') as V3RunsResponse;
    } else {
      return null;
    }
  }
  /// View all trip/service runs for a specific route ID and route type
  ///
  /// 
  Future<V3RunsResponse> runsForRouteAndRouteType(int routeId, int routeType, { String token }) async {
    Object postBody;

    // verify required params are set
    if(routeId == null) {
     throw ApiException(400, "Missing required param: routeId");
    }
    if(routeType == null) {
     throw ApiException(400, "Missing required param: routeType");
    }

    // create path and map variables
    String path = "/v3/runs/route/{route_id}/route_type/{route_type}".replaceAll("{format}","json").replaceAll("{" + "route_id" + "}", routeId.toString()).replaceAll("{" + "route_type" + "}", routeType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3RunsResponse') as V3RunsResponse;
    } else {
      return null;
    }
  }
  /// View all trip/service runs for a specific run ID
  ///
  /// 
  Future<V3RunsResponse> runsForRun(int runId, { String token }) async {
    Object postBody;

    // verify required params are set
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/v3/runs/{run_id}".replaceAll("{format}","json").replaceAll("{" + "run_id" + "}", runId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3RunsResponse') as V3RunsResponse;
    } else {
      return null;
    }
  }
  /// View the trip/service run for a specific run ID and route type
  ///
  /// 
  Future<V3RunResponse> runsForRunAndRouteType(int runId, int routeType, { String token }) async {
    Object postBody;

    // verify required params are set
    if(runId == null) {
     throw ApiException(400, "Missing required param: runId");
    }
    if(routeType == null) {
     throw ApiException(400, "Missing required param: routeType");
    }

    // create path and map variables
    String path = "/v3/runs/{run_id}/route_type/{route_type}".replaceAll("{format}","json").replaceAll("{" + "run_id" + "}", runId.toString()).replaceAll("{" + "route_type" + "}", routeType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3RunResponse') as V3RunResponse;
    } else {
      return null;
    }
  }
}
