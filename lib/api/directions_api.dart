part of ptv_api_client.api;

class DirectionsApi {
  final ApiClient apiClient;

  DirectionsApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// View all routes for a direction of travel
  ///
  ///
  Future<V3DirectionsResponse> directionsForDirection(int directionId) async {
    Object postBody;

    // verify required params are set
    if (directionId == null) {
      throw ApiException(400, "Missing required param: directionId");
    }

    // create path and map variables
    String path = "/v3/directions/{direction_id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "direction_id" + "}", directionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'V3DirectionsResponse')
          as V3DirectionsResponse;
    } else {
      return null;
    }
  }

  /// View all routes of a particular type for a direction of travel
  ///
  ///
  Future<V3DirectionsResponse> directionsForDirectionAndType(
      int directionId, int routeType) async {
    Object postBody;

    // verify required params are set
    if (directionId == null) {
      throw ApiException(400, "Missing required param: directionId");
    }
    if (routeType == null) {
      throw ApiException(400, "Missing required param: routeType");
    }

    // create path and map variables
    String path = "/v3/directions/{direction_id}/route_type/{route_type}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "direction_id" + "}", directionId.toString())
        .replaceAll("{" + "route_type" + "}", routeType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'V3DirectionsResponse')
          as V3DirectionsResponse;
    } else {
      return null;
    }
  }

  /// View directions that a route travels in
  ///
  ///
  Future<V3DirectionsResponse> directionsForRoute(int routeId) async {
    Object postBody;

    // verify required params are set
    if (routeId == null) {
      throw ApiException(400, "Missing required param: routeId");
    }

    // create path and map variables
    String path = "/v3/directions/route/{route_id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "route_id" + "}", routeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
              _decodeBodyBytes(response), 'V3DirectionsResponse')
          as V3DirectionsResponse;
    } else {
      return null;
    }
  }
}
