part of ptv_api_client.api;

class V3DisruptionResponse {
  
  V3Disruption disruption = null;
  
  V3Status status = null;
  V3DisruptionResponse();

  @override
  String toString() {
    return 'V3DisruptionResponse[disruption=$disruption, status=$status, ]';
  }

  V3DisruptionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruption'] == null) {
      disruption = null;
    } else {
      disruption = V3Disruption.fromJson(json['disruption']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (disruption != null)
      json['disruption'] = disruption;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<V3DisruptionResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DisruptionResponse>() : json.map((value) => V3DisruptionResponse.fromJson(value)).toList();
  }

  static Map<String, V3DisruptionResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DisruptionResponse.fromJson(value));
    }
    return map;
  }
}

