part of ptv_api_client.api;

class V3DisruptionDirection {
  /* Route and direction of travel combination identifier */
  int routeDirectionId;
  /* Direction of travel identifier */
  int directionId;
  /* Name of direction of travel */
  String directionName;
  /* Time of service to which disruption applies, in 24 hour clock format (HH:MM:SS) AEDT/AEST; returns null if disruption applies to multiple (or no) services */
  String serviceTime;
  V3DisruptionDirection();

  @override
  String toString() {
    return 'V3DisruptionDirection[routeDirectionId=$routeDirectionId, directionId=$directionId, directionName=$directionName, serviceTime=$serviceTime, ]';
  }

  V3DisruptionDirection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_direction_id'] == null) {
      routeDirectionId = null;
    } else {
      routeDirectionId = json['route_direction_id'];
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
    if (json['service_time'] == null) {
      serviceTime = null;
    } else {
      serviceTime = json['service_time'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (routeDirectionId != null) json['route_direction_id'] = routeDirectionId;
    if (directionId != null) json['direction_id'] = directionId;
    if (directionName != null) json['direction_name'] = directionName;
    if (serviceTime != null) json['service_time'] = serviceTime;
    return json;
  }

  static List<V3DisruptionDirection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3DisruptionDirection>()
        : json.map((value) => V3DisruptionDirection.fromJson(value)).toList();
  }

  static Map<String, V3DisruptionDirection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionDirection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3DisruptionDirection.fromJson(value));
    }
    return map;
  }
}
