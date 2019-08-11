part of ptv_api_client.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = Client();

  // api credentials, to be set by the app using this library
  String _apiKey;
  String _devId;

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "http://timetableapi.ptv.vic.gov.au"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  // api credentials, to be set by the app using this library
  void setCredentials(String apiKey, String devId) {
    _apiKey = apiKey;
    _devId = devId;
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'V3BulkDeparturesRequest':
          return V3BulkDeparturesRequest.fromJson(value);
        case 'V3BulkDeparturesResponse':
          return V3BulkDeparturesResponse.fromJson(value);
        case 'V3BulkDeparturesRouteDirectionResponse':
          return V3BulkDeparturesRouteDirectionResponse.fromJson(value);
        case 'V3BulkDeparturesStopResponse':
          return V3BulkDeparturesStopResponse.fromJson(value);
        case 'V3BulkDeparturesUpdateResponse':
          return V3BulkDeparturesUpdateResponse.fromJson(value);
        case 'V3Departure':
          return V3Departure.fromJson(value);
        case 'V3DeparturesBroadParameters':
          return V3DeparturesBroadParameters.fromJson(value);
        case 'V3DeparturesResponse':
          return V3DeparturesResponse.fromJson(value);
        case 'V3DeparturesSpecificParameters':
          return V3DeparturesSpecificParameters.fromJson(value);
        case 'V3Direction':
          return V3Direction.fromJson(value);
        case 'V3DirectionWithDescription':
          return V3DirectionWithDescription.fromJson(value);
        case 'V3DirectionsResponse':
          return V3DirectionsResponse.fromJson(value);
        case 'V3Disruption':
          return V3Disruption.fromJson(value);
        case 'V3DisruptionDirection':
          return V3DisruptionDirection.fromJson(value);
        case 'V3DisruptionMode':
          return V3DisruptionMode.fromJson(value);
        case 'V3DisruptionModesResponse':
          return V3DisruptionModesResponse.fromJson(value);
        case 'V3DisruptionResponse':
          return V3DisruptionResponse.fromJson(value);
        case 'V3DisruptionRoute':
          return V3DisruptionRoute.fromJson(value);
        case 'V3DisruptionStop':
          return V3DisruptionStop.fromJson(value);
        case 'V3Disruptions':
          return V3Disruptions.fromJson(value);
        case 'V3DisruptionsResponse':
          return V3DisruptionsResponse.fromJson(value);
        case 'V3ErrorResponse':
          return V3ErrorResponse.fromJson(value);
        case 'V3Outlet':
          return V3Outlet.fromJson(value);
        case 'V3OutletGeolocation':
          return V3OutletGeolocation.fromJson(value);
        case 'V3OutletGeolocationParameters':
          return V3OutletGeolocationParameters.fromJson(value);
        case 'V3OutletGeolocationResponse':
          return V3OutletGeolocationResponse.fromJson(value);
        case 'V3OutletParameters':
          return V3OutletParameters.fromJson(value);
        case 'V3OutletResponse':
          return V3OutletResponse.fromJson(value);
        case 'V3ResultOutlet':
          return V3ResultOutlet.fromJson(value);
        case 'V3ResultRoute':
          return V3ResultRoute.fromJson(value);
        case 'V3ResultStop':
          return V3ResultStop.fromJson(value);
        case 'V3Route':
          return V3Route.fromJson(value);
        case 'V3RouteDeparturesSpecificParameters':
          return V3RouteDeparturesSpecificParameters.fromJson(value);
        case 'V3RouteResponse':
          return V3RouteResponse.fromJson(value);
        case 'V3RouteServiceStatus':
          return V3RouteServiceStatus.fromJson(value);
        case 'V3RouteType':
          return V3RouteType.fromJson(value);
        case 'V3RouteTypesResponse':
          return V3RouteTypesResponse.fromJson(value);
        case 'V3RouteWithStatus':
          return V3RouteWithStatus.fromJson(value);
        case 'V3Run':
          return V3Run.fromJson(value);
        case 'V3RunResponse':
          return V3RunResponse.fromJson(value);
        case 'V3RunsResponse':
          return V3RunsResponse.fromJson(value);
        case 'V3SearchParameters':
          return V3SearchParameters.fromJson(value);
        case 'V3SearchResult':
          return V3SearchResult.fromJson(value);
        case 'V3Status':
          return V3Status.fromJson(value);
        case 'V3StopAccessibility':
          return V3StopAccessibility.fromJson(value);
        case 'V3StopAccessibilityWheelchair':
          return V3StopAccessibilityWheelchair.fromJson(value);
        case 'V3StopAmenityDetails':
          return V3StopAmenityDetails.fromJson(value);
        case 'V3StopBase':
          return V3StopBase.fromJson(value);
        case 'V3StopDepartureRequest':
          return V3StopDepartureRequest.fromJson(value);
        case 'V3StopDepartureRequestRouteDirection':
          return V3StopDepartureRequestRouteDirection.fromJson(value);
        case 'V3StopDetails':
          return V3StopDetails.fromJson(value);
        case 'V3StopGeosearch':
          return V3StopGeosearch.fromJson(value);
        case 'V3StopGps':
          return V3StopGps.fromJson(value);
        case 'V3StopLocation':
          return V3StopLocation.fromJson(value);
        case 'V3StopOnRoute':
          return V3StopOnRoute.fromJson(value);
        case 'V3StopResponse':
          return V3StopResponse.fromJson(value);
        case 'V3StopStaffing':
          return V3StopStaffing.fromJson(value);
        case 'V3StoppingPattern':
          return V3StoppingPattern.fromJson(value);
        case 'V3StopsByDistanceResponse':
          return V3StopsByDistanceResponse.fromJson(value);
        case 'V3StopsOnRouteResponse':
          return V3StopsOnRouteResponse.fromJson(value);
        case 'V3VehicleDescriptor':
          return V3VehicleDescriptor.fromJson(value);
        case 'V3VehiclePosition':
          return V3VehiclePosition.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
        .where((p) => p.value != null)
        .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');
    String queryString = ps.isNotEmpty
        ? '?' + ps.join('&') + '&devid=' + _devId
        : '?devid=' + _devId;

    // generate the signature required by the api
    String uriWithDeveloperID = path + queryString;
    List<int> key = utf8.encode(_apiKey);
    List<int> bytes = utf8.encode(uriWithDeveloperID);
    var hmacSha1 = Hmac(sha1, key);
    Digest signatureDigest = hmacSha1.convert(bytes);

    String updatedQueryString =
        queryString + '&signature=' + signatureDigest.toString().toUpperCase();

    String url = basePath + path + updatedQueryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null)
        throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
