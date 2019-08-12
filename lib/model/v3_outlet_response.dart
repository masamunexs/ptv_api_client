part of ptv_api_client.api;

class V3OutletResponse {
  /* myki ticket outlets */
  List<V3Outlet> outlets = [];

  V3Status status;
  V3OutletResponse();

  @override
  String toString() {
    return 'V3OutletResponse[outlets=$outlets, status=$status, ]';
  }

  V3OutletResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['outlets'] == null) {
      outlets = null;
    } else {
      outlets = V3Outlet.listFromJson(json['outlets']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (outlets != null) json['outlets'] = outlets;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3OutletResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3OutletResponse>()
        : json.map((value) => V3OutletResponse.fromJson(value)).toList();
  }

  static Map<String, V3OutletResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3OutletResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3OutletResponse.fromJson(value));
    }
    return map;
  }
}
