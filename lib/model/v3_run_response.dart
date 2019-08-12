part of ptv_api_client.api;

class V3RunResponse {
  V3Run run;

  V3Status status;
  V3RunResponse();

  @override
  String toString() {
    return 'V3RunResponse[run=$run, status=$status, ]';
  }

  V3RunResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['run'] == null) {
      run = null;
    } else {
      run = V3Run.fromJson(json['run']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (run != null) json['run'] = run;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3RunResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3RunResponse>()
        : json.map((value) => V3RunResponse.fromJson(value)).toList();
  }

  static Map<String, V3RunResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3RunResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3RunResponse.fromJson(value));
    }
    return map;
  }
}
