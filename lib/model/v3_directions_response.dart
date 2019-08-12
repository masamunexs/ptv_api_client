part of ptv_api_client.api;

class V3DirectionsResponse {
  /* Directions of travel of route */
  List<V3DirectionWithDescription> directions = [];

  V3Status status;
  V3DirectionsResponse();

  @override
  String toString() {
    return 'V3DirectionsResponse[directions=$directions, status=$status, ]';
  }

  V3DirectionsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['directions'] == null) {
      directions = null;
    } else {
      directions = V3DirectionWithDescription.listFromJson(json['directions']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = V3Status.fromJson(json['status']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (directions != null) json['directions'] = directions;
    if (status != null) json['status'] = status;
    return json;
  }

  static List<V3DirectionsResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3DirectionsResponse>()
        : json.map((value) => V3DirectionsResponse.fromJson(value)).toList();
  }

  static Map<String, V3DirectionsResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3DirectionsResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3DirectionsResponse.fromJson(value));
    }
    return map;
  }
}
