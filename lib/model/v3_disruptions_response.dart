part of ptv_api_client.api;

class V3DisruptionsResponse {
  
  V3Disruptions disruptions = null;
  
  V3Status status = null;
  V3DisruptionsResponse();

  @override
  String toString() {
    return 'V3DisruptionsResponse[disruptions=$disruptions, status=$status, ]';
  }

  V3DisruptionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruptions'] == null) {
      disruptions = null;
    } else {
      disruptions = V3Disruptions.fromJson(json['disruptions']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (disruptions != null)
      json['disruptions'] = disruptions;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<V3DisruptionsResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DisruptionsResponse>() : json.map((value) => V3DisruptionsResponse.fromJson(value)).toList();
  }

  static Map<String, V3DisruptionsResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionsResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DisruptionsResponse.fromJson(value));
    }
    return map;
  }
}

