part of ptv_api_client.api;

class V3DirectionWithDescription {
  
  String routeDirectionDescription = null;
  /* Direction of travel identifier */
  int directionId = null;
  /* Name of direction of travel */
  String directionName = null;
  /* Route identifier */
  int routeId = null;
  /* Transport mode identifier */
  int routeType = null;
  V3DirectionWithDescription();

  @override
  String toString() {
    return 'V3DirectionWithDescription[routeDirectionDescription=$routeDirectionDescription, directionId=$directionId, directionName=$directionName, routeId=$routeId, routeType=$routeType, ]';
  }

  V3DirectionWithDescription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_direction_description'] == null) {
      routeDirectionDescription = null;
    } else {
          routeDirectionDescription = json['route_direction_description'];
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
    if (routeDirectionDescription != null)
      json['route_direction_description'] = routeDirectionDescription;
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

  static List<V3DirectionWithDescription> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DirectionWithDescription>() : json.map((value) => V3DirectionWithDescription.fromJson(value)).toList();
  }

  static Map<String, V3DirectionWithDescription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DirectionWithDescription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DirectionWithDescription.fromJson(value));
    }
    return map;
  }
}

