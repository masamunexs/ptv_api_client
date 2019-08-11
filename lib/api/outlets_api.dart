part of ptv_api_client.api;



class OutletsApi {
  final ApiClient apiClient;

  OutletsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List all ticket outlets
  ///
  /// 
  Future<V3OutletResponse> outletsGetAllOutlets({ int maxResults }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/v3/outlets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxResults != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_results", maxResults));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3OutletResponse') as V3OutletResponse;
    } else {
      return null;
    }
  }
  /// List ticket outlets near a specific location
  ///
  /// 
  Future<V3OutletGeolocationResponse> outletsGetOutletsByGeolocation(double latitude, double longitude, { double maxDistance, int maxResults }) async {
    Object postBody;

    // verify required params are set
    if(latitude == null) {
     throw ApiException(400, "Missing required param: latitude");
    }
    if(longitude == null) {
     throw ApiException(400, "Missing required param: longitude");
    }

    // create path and map variables
    String path = "/v3/outlets/location/{latitude},{longitude}".replaceAll("{format}","json").replaceAll("{" + "latitude" + "}", latitude.toString()).replaceAll("{" + "longitude" + "}", longitude.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxDistance != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_distance", maxDistance));
    }
    if(maxResults != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_results", maxResults));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'V3OutletGeolocationResponse') as V3OutletGeolocationResponse;
    } else {
      return null;
    }
  }
}
