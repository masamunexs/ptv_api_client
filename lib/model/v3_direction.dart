part of ptv_api_client.api;

class V3Direction {
  /* Direction of travel identifier */
  int directionId = null;
  /* Name of direction of travel */
  String directionName = null;
  /* Route identifier */
  int routeId = null;
  /* Transport mode identifier */
  int routeType = null;
  V3Direction();

  @override
  String toString() {
    return 'V3Direction[directionId=$directionId, directionName=$directionName, routeId=$routeId, routeType=$routeType, ]';
  }

  V3Direction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['route_id'] == null) {
      routeId = null;
    } else {
          routeId = json['route_id'];
    }
    if (json['route_type'] == null) {
      routeType = null;
    } else {
          routeType = json['route_type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (directionId != null)
      json['direction_id'] = directionId;
    if (directionName != null)
      json['direction_name'] = directionName;
    if (routeId != null)
      json['route_id'] = routeId;
    if (routeType != null)
      json['route_type'] = routeType;
    return json;
  }

  static List<V3Direction> listFromJson(List<dynamic> json) {
    return json == null ? List<V3Direction>() : json.map((value) => V3Direction.fromJson(value)).toList();
  }

  static Map<String, V3Direction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Direction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3Direction.fromJson(value));
    }
    return map;
  }
}

