part of ptv_api_client.api;

class V3Route {
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
  V3Route();

  @override
  String toString() {
    return 'V3Route[routeType=$routeType, routeId=$routeId, routeName=$routeName, routeNumber=$routeNumber, routeGtfsId=$routeGtfsId, ]';
  }

  V3Route.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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

  static List<V3Route> listFromJson(List<dynamic> json) {
    return json == null ? List<V3Route>() : json.map((value) => V3Route.fromJson(value)).toList();
  }

  static Map<String, V3Route> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Route>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3Route.fromJson(value));
    }
    return map;
  }
}

