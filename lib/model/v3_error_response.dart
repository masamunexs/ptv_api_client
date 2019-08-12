part of ptv_api_client.api;

class V3ErrorResponse {
  /* Error message */
  String message;

  V3Status status;
  V3ErrorResponse();

  @override
  String toString() {
    return 'V3ErrorResponse[message=$message, status=$status, ]';
  }

  V3ErrorResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
      message = json['message'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (message != null) json['message'] = message;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3ErrorResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3ErrorResponse>()
        : json.map((value) => V3ErrorResponse.fromJson(value)).toList();
  }

  static Map<String, V3ErrorResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3ErrorResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3ErrorResponse.fromJson(value));
    }
    return map;
  }
}
