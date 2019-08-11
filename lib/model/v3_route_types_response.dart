part of ptv_api_client.api;

class V3RouteTypesResponse {
  /* Transport mode identifiers */
  List<V3RouteType> routeTypes = [];
  
  V3Status status = null;
  V3RouteTypesResponse();

  @override
  String toString() {
    return 'V3RouteTypesResponse[routeTypes=$routeTypes, status=$status, ]';
  }

  V3RouteTypesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_types'] == null) {
      routeTypes = null;
    } else {
      routeTypes = V3RouteType.listFromJson(json['route_types']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (routeTypes != null)
      json['route_types'] = routeTypes;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<V3RouteTypesResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V3RouteTypesResponse>() : json.map((value) => V3RouteTypesResponse.fromJson(value)).toList();
  }

  static Map<String, V3RouteTypesResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3RouteTypesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3RouteTypesResponse.fromJson(value));
    }
    return map;
  }
}

