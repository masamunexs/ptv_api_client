part of ptv_api_client.api;

class V3RouteResponse {
  V3RouteWithStatus route;

  V3Status status;
  V3RouteResponse();

  @override
  String toString() {
    return 'V3RouteResponse[route=$route, status=$status, ]';
  }

  V3RouteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route'] == null) {
      route = null;
    } else {
      route = V3RouteWithStatus.fromJson(json['route']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (route != null) json['route'] = route;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3RouteResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3RouteResponse>()
        : json.map((value) => V3RouteResponse.fromJson(value)).toList();
  }

  static Map<String, V3RouteResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3RouteResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3RouteResponse.fromJson(value));
    }
    return map;
  }
}
