part of ptv_api_client.api;

class V3StopResponse {
  V3StopDetails stop;
  /* Disruption information applicable to relevant routes or stops */
  Map<String, V3Disruption> disruptions = {};

  V3Status status;
  V3StopResponse();

  @override
  String toString() {
    return 'V3StopResponse[stop=$stop, disruptions=$disruptions, status=$status, ]';
  }

  V3StopResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stop'] == null) {
      stop = null;
    } else {
      stop = V3StopDetails.fromJson(json['stop']);
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
    if (stop != null) json['stop'] = stop;
    if (disruptions != null) json['disruptions'] = disruptions;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3StopResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopResponse>()
        : json.map((value) => V3StopResponse.fromJson(value)).toList();
  }

  static Map<String, V3StopResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopResponse.fromJson(value));
    }
    return map;
  }
}
