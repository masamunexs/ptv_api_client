part of ptv_api_client.api;

class V3RouteType {
  /* Name of transport mode */
  String routeTypeName;
  /* Transport mode identifier */
  int routeType;
  V3RouteType();

  @override
  String toString() {
    return 'V3RouteType[routeTypeName=$routeTypeName, routeType=$routeType, ]';
  }

  V3RouteType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_type_name'] == null) {
      routeTypeName = null;
    } else {
      routeTypeName = json['route_type_name'];
    }
    if (json['route_type'] == null) {
      routeType = null;
    } else {
      routeType = json['route_type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (routeTypeName != null) json['route_type_name'] = routeTypeName;
    if (routeType != null) json['route_type'] = routeType;
    return json;
  }

  static List<V3RouteType> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3RouteType>()
        : json.map((value) => V3RouteType.fromJson(value)).toList();
  }

  static Map<String, V3RouteType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3RouteType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3RouteType.fromJson(value));
    }
    return map;
  }
}
