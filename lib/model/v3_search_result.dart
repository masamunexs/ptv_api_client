part of ptv_api_client.api;

class V3SearchResult {
  /* Train stations, tram stops, bus stops, regional coach stops or Night Bus stops */
  List<V3ResultStop> stops = [];
  /* Train lines, tram routes, bus routes, regional coach routes, Night Bus routes */
  List<V3ResultRoute> routes = [];
  /* myki ticket outlets */
  List<V3ResultOutlet> outlets = [];
  
  V3Status status = null;
  V3SearchResult();

  @override
  String toString() {
    return 'V3SearchResult[stops=$stops, routes=$routes, outlets=$outlets, status=$status, ]';
  }

  V3SearchResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stops'] == null) {
      stops = null;
    } else {
      stops = V3ResultStop.listFromJson(json['stops']);
    }
    if (json['routes'] == null) {
      routes = null;
    } else {
      routes = V3ResultRoute.listFromJson(json['routes']);
    }
    if (json['outlets'] == null) {
      outlets = null;
    } else {
      outlets = V3ResultOutlet.listFromJson(json['outlets']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (stops != null)
      json['stops'] = stops;
    if (routes != null)
      json['routes'] = routes;
    if (outlets != null)
      json['outlets'] = outlets;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<V3SearchResult> listFromJson(List<dynamic> json) {
    return json == null ? List<V3SearchResult>() : json.map((value) => V3SearchResult.fromJson(value)).toList();
  }

  static Map<String, V3SearchResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3SearchResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3SearchResult.fromJson(value));
    }
    return map;
  }
}

