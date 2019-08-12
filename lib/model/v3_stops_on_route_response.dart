part of ptv_api_client.api;

class V3StopsOnRouteResponse {
  /* Train stations, tram stops, bus stops, regional coach stops or Night Bus stops */
  List<V3StopOnRoute> stops = [];
  /* Disruption information applicable to relevant routes or stops */
  Map<String, V3Disruption> disruptions = {};

  V3Status status;
  V3StopsOnRouteResponse();

  @override
  String toString() {
    return 'V3StopsOnRouteResponse[stops=$stops, disruptions=$disruptions, status=$status, ]';
  }

  V3StopsOnRouteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stops'] == null) {
      stops = null;
    } else {
      stops = V3StopOnRoute.listFromJson(json['stops']);
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
    if (stops != null) json['stops'] = stops;
    if (disruptions != null) json['disruptions'] = disruptions;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3StopsOnRouteResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopsOnRouteResponse>()
        : json.map((value) => V3StopsOnRouteResponse.fromJson(value)).toList();
  }

  static Map<String, V3StopsOnRouteResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3StopsOnRouteResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopsOnRouteResponse.fromJson(value));
    }
    return map;
  }
}
