part of ptv_api_client.api;

class V3BulkDeparturesRouteDirectionResponse {
  /* Route identifier */
  String routeId;
  /* Direction of travel identifier */
  int directionId;
  /* Name of direction of travel */
  String directionName;
  V3BulkDeparturesRouteDirectionResponse();

  @override
  String toString() {
    return 'V3BulkDeparturesRouteDirectionResponse[routeId=$routeId, directionId=$directionId, directionName=$directionName, ]';
  }

  V3BulkDeparturesRouteDirectionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_id'] == null) {
      routeId = null;
    } else {
      routeId = json['route_id'];
    }
    if (json['direction_id'] == null) {
      directionId = null;
    } else {
      directionId = json['direction_id'];
    }
    if (json['direction_name'] == null) {
      directionName = null;
    } else {
      directionName = json['direction_name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (routeId != null) json['route_id'] = routeId;
    if (directionId != null) json['direction_id'] = directionId;
    if (directionName != null) json['direction_name'] = directionName;
    return json;
  }

  static List<V3BulkDeparturesRouteDirectionResponse> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<V3BulkDeparturesRouteDirectionResponse>()
        : json
            .map((value) =>
                V3BulkDeparturesRouteDirectionResponse.fromJson(value))
            .toList();
  }

  static Map<String, V3BulkDeparturesRouteDirectionResponse> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3BulkDeparturesRouteDirectionResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3BulkDeparturesRouteDirectionResponse.fromJson(value));
    }
    return map;
  }
}
