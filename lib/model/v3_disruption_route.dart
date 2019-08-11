part of ptv_api_client.api;

class V3DisruptionRoute {
  /* Transport mode identifier */
  int routeType = null;
  /* Route identifier */
  int routeId = null;
  /* Name of route */
  String routeName = null;
  /* Route number presented to public (i.e. not route_id) */
  String routeNumber = null;
  /* GTFS Identifer of the route */
  String routeGtfsId = null;
  
  V3DisruptionDirection direction = null;
  V3DisruptionRoute();

  @override
  String toString() {
    return 'V3DisruptionRoute[routeType=$routeType, routeId=$routeId, routeName=$routeName, routeNumber=$routeNumber, routeGtfsId=$routeGtfsId, direction=$direction, ]';
  }

  V3DisruptionRoute.fromJson(Map<String, dynamic> json) {
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
    if (json['direction'] == null) {
      direction = null;
    } else {
      direction = V3DisruptionDirection.fromJson(json['direction']);
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
    if (direction != null)
      json['direction'] = direction;
    return json;
  }

  static List<V3DisruptionRoute> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DisruptionRoute>() : json.map((value) => V3DisruptionRoute.fromJson(value)).toList();
  }

  static Map<String, V3DisruptionRoute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionRoute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DisruptionRoute.fromJson(value));
    }
    return map;
  }
}

