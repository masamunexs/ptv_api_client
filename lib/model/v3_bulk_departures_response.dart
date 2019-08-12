part of ptv_api_client.api;

class V3BulkDeparturesResponse {
  /* Contains departures for the requested stop and route(s). It includes details as to the route_direction and whether it is still valid. */
  List<V3BulkDeparturesUpdateResponse> responses = [];
  /* A train station, tram stop, bus stop, regional coach stop or Night Bus stop */
  Map<String, V3BulkDeparturesStopResponse> stops = {};
  /* Train lines, tram routes, bus routes, regional coach routes, Night Bus routes */
  List<V3Route> routes = [];
  /* Individual trips/services of a route */
  List<V3Run> runs = [];
  /* Directions of travel of route */
  List<V3Direction> directions = [];
  /* Disruption information applicable to relevant routes or stops */
  Map<String, V3Disruption> disruptions = {};

  V3Status status;
  V3BulkDeparturesResponse();

  @override
  String toString() {
    return 'V3BulkDeparturesResponse[responses=$responses, stops=$stops, routes=$routes, runs=$runs, directions=$directions, disruptions=$disruptions, status=$status, ]';
  }

  V3BulkDeparturesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['responses'] == null) {
      responses = null;
    } else {
      responses =
          V3BulkDeparturesUpdateResponse.listFromJson(json['responses']);
    }
    if (json['stops'] == null) {
      stops = null;
    } else {
      stops = V3BulkDeparturesStopResponse.mapFromJson(json['stops']);
    }
    if (json['routes'] == null) {
      routes = null;
    } else {
      routes = V3Route.listFromJson(json['routes']);
    }
    if (json['runs'] == null) {
      runs = null;
    } else {
      runs = V3Run.listFromJson(json['runs']);
    }
    if (json['directions'] == null) {
      directions = null;
    } else {
      directions = V3Direction.listFromJson(json['directions']);
    }
    if (json['disruptions'] == null) {
      disruptions = null;
    } else {
      disruptions = V3Disruption.mapFromJson(json['disruptions']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (responses != null) json['responses'] = responses;
    if (stops != null) json['stops'] = stops;
    if (routes != null) json['routes'] = routes;
    if (runs != null) json['runs'] = runs;
    if (directions != null) json['directions'] = directions;
    if (disruptions != null) json['disruptions'] = disruptions;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3BulkDeparturesResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3BulkDeparturesResponse>()
        : json
            .map((value) => V3BulkDeparturesResponse.fromJson(value))
            .toList();
  }

  static Map<String, V3BulkDeparturesResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3BulkDeparturesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3BulkDeparturesResponse.fromJson(value));
    }
    return map;
  }
}
