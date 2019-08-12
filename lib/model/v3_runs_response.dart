part of ptv_api_client.api;

class V3RunsResponse {
  /* Individual trips/services of a route */
  List<V3Run> runs = [];

  V3Status status;
  V3RunsResponse();

  @override
  String toString() {
    return 'V3RunsResponse[runs=$runs, status=$status, ]';
  }

  V3RunsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['runs'] == null) {
      runs = null;
    } else {
      runs = V3Run.listFromJson(json['runs']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (runs != null) json['runs'] = runs;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3RunsResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3RunsResponse>()
        : json.map((value) => V3RunsResponse.fromJson(value)).toList();
  }

  static Map<String, V3RunsResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3RunsResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3RunsResponse.fromJson(value));
    }
    return map;
  }
}
