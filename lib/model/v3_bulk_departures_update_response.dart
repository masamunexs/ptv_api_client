part of ptv_api_client.api;

class V3BulkDeparturesUpdateResponse {
  /* Timetabled and real-time service departures */
  List<V3Departure> departures = [];
  /* Transport mode identifier */
  int routeType;
  /* Stop identifier */
  int stopId;

  V3BulkDeparturesRouteDirectionResponse requestedRouteDirection;
  /* The status of the route direction (changed | unchanged).              If changed, requests should change the requested_route_direction for the route_direction supplied. */
  int routeDirectionStatus;
  //enum routeDirectionStatusEnum {  0,  1,  };{

  V3BulkDeparturesRouteDirectionResponse routeDirection;
  V3BulkDeparturesUpdateResponse();

  @override
  String toString() {
    return 'V3BulkDeparturesUpdateResponse[departures=$departures, routeType=$routeType, stopId=$stopId, requestedRouteDirection=$requestedRouteDirection, routeDirectionStatus=$routeDirectionStatus, routeDirection=$routeDirection, ]';
  }

  V3BulkDeparturesUpdateResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['departures'] == null) {
      departures = null;
    } else {
      departures = V3Departure.listFromJson(json['departures']);
    }
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
    if (json['requested_route_direction'] == null) {
      requestedRouteDirection = null;
    } else {
      requestedRouteDirection = V3BulkDeparturesRouteDirectionResponse.fromJson(
          json['requested_route_direction']);
    }
    if (json['route_direction_status'] == null) {
      routeDirectionStatus = null;
    } else {
      routeDirectionStatus = json['route_direction_status'];
    }
    if (json['route_direction'] == null) {
      routeDirection = null;
    } else {
      routeDirection = V3BulkDeparturesRouteDirectionResponse.fromJson(
          json['route_direction']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (departures != null) json['departures'] = departures;
    if (routeType != null) json['route_type'] = routeType;
    if (stopId != null) json['stop_id'] = stopId;
    if (requestedRouteDirection != null) {
      json['requested_route_direction'] = requestedRouteDirection;
    }
    if (routeDirectionStatus != null) {
      json['route_direction_status'] = routeDirectionStatus;
    }
    if (routeDirection != null) json['route_direction'] = routeDirection;
    return json;
  }

  static List<V3BulkDeparturesUpdateResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3BulkDeparturesUpdateResponse>()
        : json
            .map((value) => V3BulkDeparturesUpdateResponse.fromJson(value))
            .toList();
  }

  static Map<String, V3BulkDeparturesUpdateResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3BulkDeparturesUpdateResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3BulkDeparturesUpdateResponse.fromJson(value));
    }
    return map;
  }
}
