part of ptv_api_client.api;

class V3ResultStop {
  /* Distance of stop from input location (in metres); returns 0 if no location is input */
  double stopDistance = null;
  /* suburb of stop */
  String stopSuburb = null;
  /* Name of stop */
  String stopName = null;
  /* Stop identifier */
  int stopId = null;
  /* Transport mode identifier */
  int routeType = null;
  /* Geographic coordinate of latitude at stop */
  double stopLatitude = null;
  /* Geographic coordinate of longitude at stop */
  double stopLongitude = null;
  /* Sequence of the stop on the route/run; return 0 when route_id or run_id not specified. Order ascendingly by this field (when non zero) to get physical order (earliest first) of stops on the route_id/run_id. */
  int stopSequence = null;
  V3ResultStop();

  @override
  String toString() {
    return 'V3ResultStop[stopDistance=$stopDistance, stopSuburb=$stopSuburb, stopName=$stopName, stopId=$stopId, routeType=$routeType, stopLatitude=$stopLatitude, stopLongitude=$stopLongitude, stopSequence=$stopSequence, ]';
  }

  V3ResultStop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stop_distance'] == null) {
      stopDistance = null;
    } else {
          stopDistance = json['stop_distance'];
    }
    if (json['stop_suburb'] == null) {
      stopSuburb = null;
    } else {
          stopSuburb = json['stop_suburb'];
    }
    if (json['stop_name'] == null) {
      stopName = null;
    } else {
          stopName = json['stop_name'];
    }
    if (json['stop_id'] == null) {
      stopId = null;
    } else {
          stopId = json['stop_id'];
    }
    if (json['route_type'] == null) {
      routeType = null;
    } else {
          routeType = json['route_type'];
    }
    if (json['stop_latitude'] == null) {
      stopLatitude = null;
    } else {
          stopLatitude = json['stop_latitude'];
    }
    if (json['stop_longitude'] == null) {
      stopLongitude = null;
    } else {
          stopLongitude = json['stop_longitude'];
    }
    if (json['stop_sequence'] == null) {
      stopSequence = null;
    } else {
          stopSequence = json['stop_sequence'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (stopDistance != null)
      json['stop_distance'] = stopDistance;
    if (stopSuburb != null)
      json['stop_suburb'] = stopSuburb;
    if (stopName != null)
      json['stop_name'] = stopName;
    if (stopId != null)
      json['stop_id'] = stopId;
    if (routeType != null)
      json['route_type'] = routeType;
    if (stopLatitude != null)
      json['stop_latitude'] = stopLatitude;
    if (stopLongitude != null)
      json['stop_longitude'] = stopLongitude;
    if (stopSequence != null)
      json['stop_sequence'] = stopSequence;
    return json;
  }

  static List<V3ResultStop> listFromJson(List<dynamic> json) {
    return json == null ? List<V3ResultStop>() : json.map((value) => V3ResultStop.fromJson(value)).toList();
  }

  static Map<String, V3ResultStop> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3ResultStop>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3ResultStop.fromJson(value));
    }
    return map;
  }
}

