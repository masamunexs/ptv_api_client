part of ptv_api_client.api;

class V3OutletGeolocationResponse {
  /* myki ticket outlets */
  List<V3OutletGeolocation> outlets = [];
  
  V3Status status = null;
  V3OutletGeolocationResponse();

  @override
  String toString() {
    return 'V3OutletGeolocationResponse[outlets=$outlets, status=$status, ]';
  }

  V3OutletGeolocationResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['outlets'] == null) {
      outlets = null;
    } else {
      outlets = V3OutletGeolocation.listFromJson(json['outlets']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (outlets != null)
      json['outlets'] = outlets;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<V3OutletGeolocationResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V3OutletGeolocationResponse>() : json.map((value) => V3OutletGeolocationResponse.fromJson(value)).toList();
  }

  static Map<String, V3OutletGeolocationResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3OutletGeolocationResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3OutletGeolocationResponse.fromJson(value));
    }
    return map;
  }
}

