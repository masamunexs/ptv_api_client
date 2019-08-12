part of ptv_api_client.api;

class V3DisruptionModesResponse {
  /* Transport mode identifiers */
  List<V3DisruptionMode> disruptionModes = [];

  V3Status status;
  V3DisruptionModesResponse();

  @override
  String toString() {
    return 'V3DisruptionModesResponse[disruptionModes=$disruptionModes, status=$status, ]';
  }

  V3DisruptionModesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruption_modes'] == null) {
      disruptionModes = null;
    } else {
      disruptionModes = V3DisruptionMode.listFromJson(json['disruption_modes']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (disruptionModes != null) json['disruption_modes'] = disruptionModes;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3DisruptionModesResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3DisruptionModesResponse>()
        : json
            .map((value) => V3DisruptionModesResponse.fromJson(value))
            .toList();
  }

  static Map<String, V3DisruptionModesResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionModesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3DisruptionModesResponse.fromJson(value));
    }
    return map;
  }
}
