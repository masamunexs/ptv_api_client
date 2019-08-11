part of ptv_api_client.api;

class V3RouteWithStatus {
  
  V3RouteServiceStatus routeServiceStatus = null;
  /* Transport mode identifier */
  int routeType = null;
  /* Route identifier */
  int routeId = null;
  /* Name of route */
  String routeName = null;
  /* Route number presented to public (nb. not route_id) */
  String routeNumber = null;
  /* GTFS Identifer of the route */
  String routeGtfsId = null;
  V3RouteWithStatus();

  @override
  String toString() {
    return 'V3RouteWithStatus[routeServiceStatus=$routeServiceStatus, routeType=$routeType, routeId=$routeId, routeName=$routeName, routeNumber=$routeNumber, routeGtfsId=$routeGtfsId, ]';
  }

  V3RouteWithStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_service_status'] == null) {
      routeServiceStatus = null;
    } else {
      routeServiceStatus = V3RouteServiceStatus.fromJson(json['route_service_status']);
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
    if (json['route_gtfs_id'] == null) {
      routeGtfsId = null;
    } else {
          routeGtfsId = json['route_gtfs_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (routeServiceStatus != null)
      json['route_service_status'] = routeServiceStatus;
    if (routeType != null)
      json['route_type'] = routeType;
    if (routeId != null)
      json['route_id'] = routeId;
    if (routeName != null)
      json['route_name'] = routeName;
    if (routeNumber != null)
      json['route_number'] = routeNumber;
    if (routeGtfsId != null)
      json['route_gtfs_id'] = routeGtfsId;
    return json;
  }

  static List<V3RouteWithStatus> listFromJson(List<dynamic> json) {
    return json == null ? List<V3RouteWithStatus>() : json.map((value) => V3RouteWithStatus.fromJson(value)).toList();
  }

  static Map<String, V3RouteWithStatus> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3RouteWithStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3RouteWithStatus.fromJson(value));
    }
    return map;
  }
}

