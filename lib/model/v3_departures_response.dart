part of ptv_api_client.api;

class V3DeparturesResponse {
  /* Timetabled and real-time service departures */
  List<V3Departure> departures = [];
  /* A train station, tram stop, bus stop, regional coach stop or Night Bus stop */
  Map<String, V3ResultStop> stops = {};
  /* Train lines, tram routes, bus routes, regional coach routes, Night Bus routes */
  Map<String, V3Route> routes = {};
  /* Individual trips/services of a route */
  Map<String, V3Run> runs = {};
  /* Directions of travel of route */
  Map<String, V3Direction> directions = {};
  /* Disruption information applicable to relevant routes or stops */
  Map<String, V3Disruption> disruptions = {};
  
  V3Status status = null;
  V3DeparturesResponse();

  @override
  String toString() {
    return 'V3DeparturesResponse[departures=$departures, stops=$stops, routes=$routes, runs=$runs, directions=$directions, disruptions=$disruptions, status=$status, ]';
  }

  V3DeparturesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['departures'] == null) {
      departures = null;
    } else {
      departures = V3Departure.listFromJson(json['departures']);
    }
    if (json['stops'] == null) {
      stops = null;
    } else {
      stops = V3ResultStop.mapFromJson(json['stops']);
    }
    if (json['routes'] == null) {
      routes = null;
    } else {
      routes = V3Route.mapFromJson(json['routes']);
    }
    if (json['runs'] == null) {
      runs = null;
    } else {
      runs = V3Run.mapFromJson(json['runs']);
    }
    if (json['directions'] == null) {
      directions = null;
    } else {
      directions = V3Direction.mapFromJson(json['directions']);
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
    Map <String, dynamic> json = {};
    if (departures != null)
      json['departures'] = departures;
    if (stops != null)
      json['stops'] = stops;
    if (routes != null)
      json['routes'] = routes;
    if (runs != null)
      json['runs'] = runs;
    if (directions != null)
      json['directions'] = directions;
    if (disruptions != null)
      json['disruptions'] = disruptions;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<V3DeparturesResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DeparturesResponse>() : json.map((value) => V3DeparturesResponse.fromJson(value)).toList();
  }

  static Map<String, V3DeparturesResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DeparturesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DeparturesResponse.fromJson(value));
    }
    return map;
  }
}

