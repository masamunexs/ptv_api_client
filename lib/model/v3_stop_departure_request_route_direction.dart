part of ptv_api_client.api;

class V3StopDepartureRequestRouteDirection {
  /* Identifier of route; values returned by Routes API - v3/routes */
  String routeId;
  /* Direction of travel identifier; values returned by Directions API - v3/directions */
  int directionId;
  /* Name of direction of travel; values returned by Directions API - v3/directions */
  String directionName;
  V3StopDepartureRequestRouteDirection();

  @override
  String toString() {
    return 'V3StopDepartureRequestRouteDirection[routeId=$routeId, directionId=$directionId, directionName=$directionName, ]';
  }

  V3StopDepartureRequestRouteDirection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_id'] == null) {
      routeId = null;
    } else {
      routeId = json['route_id'];
    }
    if (json['direction_id'] == null) {
      directionId = null;
    } else {
      directionId = json['direction_id'];
    }
    if (json['direction_name'] == null) {
      directionName = null;
    } else {
      directionName = json['direction_name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (routeId != null) json['route_id'] = routeId;
    if (directionId != null) json['direction_id'] = directionId;
    if (directionName != null) json['direction_name'] = directionName;
    return json;
  }

  static List<V3StopDepartureRequestRouteDirection> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<V3StopDepartureRequestRouteDirection>()
        : json
            .map(
                (value) => V3StopDepartureRequestRouteDirection.fromJson(value))
            .toList();
  }

  static Map<String, V3StopDepartureRequestRouteDirection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3StopDepartureRequestRouteDirection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopDepartureRequestRouteDirection.fromJson(value));
    }
    return map;
  }
}
