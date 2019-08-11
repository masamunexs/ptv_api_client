part of ptv_api_client.api;



class DeparturesApi {
  final ApiClient apiClient;

  DeparturesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View departures for all routes from a stop
  ///
  /// 
  Future<V3DeparturesResponse> departuresGetForStop(int routeType, int stopId, { List<int> platformNumbers, int directionId, bool lookBackwards, bool gtfs, DateTime dateUtc, int maxResults, bool includeCancelled, List<String> expand, String token }) async {
    Object postBody;

    // verify required params are set
    if(routeType == null) {
     throw ApiException(400, "Missing required param: routeType");
    }
    if(stopId == null) {
     throw ApiException(400, "Missing required param: stopId");
    }

    // create path and map variables
    String path = "/v3/departures/route_type/{route_type}/stop/{stop_id}".replaceAll("{format}","json").replaceAll("{" + "route_type" + "}", routeType.toString()).replaceAll("{" + "stop_id" + "}", stopId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(platformNumbers != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "platform_numbers", platformNumbers));
    }
    if(directionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "direction_id", directionId));
    }
    if(lookBackwards != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "look_backwards", lookBackwards));
    }
    if(gtfs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "gtfs", gtfs));
    }
    if(dateUtc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "date_utc", dateUtc));
    }
    if(maxResults != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_results", maxResults));
    }
    if(includeCancelled != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include_cancelled", includeCancelled));
    }
    if(expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "expand", expand));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3DeparturesResponse') as V3DeparturesResponse;
    } else {
      return null;
    }
  }
  /// View departures for a specific route from a stop
  ///
  /// 
  Future<V3DeparturesResponse> departuresGetForStopAndRoute(int routeType, int stopId, String routeId, { int directionId, bool lookBackwards, bool gtfs, DateTime dateUtc, int maxResults, bool includeCancelled, List<String> expand, String token }) async {
    Object postBody;

    // verify required params are set
    if(routeType == null) {
     throw ApiException(400, "Missing required param: routeType");
    }
    if(stopId == null) {
     throw ApiException(400, "Missing required param: stopId");
    }
    if(routeId == null) {
     throw ApiException(400, "Missing required param: routeId");
    }

    // create path and map variables
    String path = "/v3/departures/route_type/{route_type}/stop/{stop_id}/route/{route_id}".replaceAll("{format}","json").replaceAll("{" + "route_type" + "}", routeType.toString()).replaceAll("{" + "stop_id" + "}", stopId.toString()).replaceAll("{" + "route_id" + "}", routeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(directionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "direction_id", directionId));
    }
    if(lookBackwards != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "look_backwards", lookBackwards));
    }
    if(gtfs != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "gtfs", gtfs));
    }
    if(dateUtc != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "date_utc", dateUtc));
    }
    if(maxResults != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_results", maxResults));
    }
    if(includeCancelled != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include_cancelled", includeCancelled));
    }
    if(expand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "expand", expand));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3DeparturesResponse') as V3DeparturesResponse;
    } else {
      return null;
    }
  }
}
