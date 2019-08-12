part of ptv_api_client.api;

class V3ResultRoute {
  /* Name of route */
  String routeName;
  /* Route number presented to public (nb. not route_id) */
  String routeNumber;
  /* Transport mode identifier */
  int routeType;
  /* Route identifier */
  int routeId;
  /* GTFS Identifer of the route */
  String routeGtfsId;

  V3RouteServiceStatus routeServiceStatus;
  V3ResultRoute();

  @override
  String toString() {
    return 'V3ResultRoute[routeName=$routeName, routeNumber=$routeNumber, routeType=$routeType, routeId=$routeId, routeGtfsId=$routeGtfsId, routeServiceStatus=$routeServiceStatus, ]';
  }

  V3ResultRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_name'] == null) {
      routeName = null;
    } else {
      routeName = json['route_name'];
    }
    if (json['route_number'] == null) {
      routeNumber = null;
    } else {
      routeNumber = json['route_number'];
    }
    if (json['route_type'] == null) {
      routeType = null;
    } else {
      routeType = json['route_type'];
    }
    if (json['route_id'] == null) {
      routeId = null;
    } else {
      routeId = json['route_id'];
    }
    if (json['route_gtfs_id'] == null) {
      routeGtfsId = null;
    } else {
      routeGtfsId = json['route_gtfs_id'];
    }
    if (json['route_service_status'] == null) {
      routeServiceStatus = null;
    } else {
      routeServiceStatus =
          V3RouteServiceStatus.fromJson(json['route_service_status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (routeName != null) json['route_name'] = routeName;
    if (routeNumber != null) json['route_number'] = routeNumber;
    if (routeType != null) json['route_type'] = routeType;
    if (routeId != null) json['route_id'] = routeId;
    if (routeGtfsId != null) json['route_gtfs_id'] = routeGtfsId;
    if (routeServiceStatus != null) {
      json['route_service_status'] = routeServiceStatus;
    }
    return json;
  }

  static List<V3ResultRoute> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3ResultRoute>()
        : json.map((value) => V3ResultRoute.fromJson(value)).toList();
  }

  static Map<String, V3ResultRoute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3ResultRoute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3ResultRoute.fromJson(value));
    }
    return map;
  }
}
