part of ptv_api_client.api;

class V3StopDepartureRequest {
  /* Number identifying transport mode; values returned via RouteTypes API */
  int routeType = null;
  //enum routeTypeEnum {  0,  1,  2,  3,  4,  };{
  /* Identifier of stop; values returned by Stops API */
  int stopId = null;
  /* Maximum number of results returned */
  int maxResults = null;
  /* Indicates that stop_id parameter will accept \"GTFS stop_id\" data and route_directions[x].route_id parameters will accept route_gtfs_id data */
  bool gtfs = null;
  /* The route directions to find departures for at this stop. */
  List<V3StopDepartureRequestRouteDirection> routeDirections = [];
  V3StopDepartureRequest();

  @override
  String toString() {
    return 'V3StopDepartureRequest[routeType=$routeType, stopId=$stopId, maxResults=$maxResults, gtfs=$gtfs, routeDirections=$routeDirections, ]';
  }

  V3StopDepartureRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_type'] == null) {
      routeType = null;
    } else {
          routeType = json['route_type'];
    }
    if (json['stop_id'] == null) {
      stopId = null;
    } else {
          stopId = json['stop_id'];
    }
    if (json['max_results'] == null) {
      maxResults = null;
    } else {
          maxResults = json['max_results'];
    }
    if (json['gtfs'] == null) {
      gtfs = null;
    } else {
          gtfs = json['gtfs'];
    }
    if (json['route_directions'] == null) {
      routeDirections = null;
    } else {
      routeDirections = V3StopDepartureRequestRouteDirection.listFromJson(json['route_directions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (routeType != null)
      json['route_type'] = routeType;
    if (stopId != null)
      json['stop_id'] = stopId;
    if (maxResults != null)
      json['max_results'] = maxResults;
    if (gtfs != null)
      json['gtfs'] = gtfs;
    if (routeDirections != null)
      json['route_directions'] = routeDirections;
    return json;
  }

  static List<V3StopDepartureRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<V3StopDepartureRequest>() : json.map((value) => V3StopDepartureRequest.fromJson(value)).toList();
  }

  static Map<String, V3StopDepartureRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopDepartureRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3StopDepartureRequest.fromJson(value));
    }
    return map;
  }
}

