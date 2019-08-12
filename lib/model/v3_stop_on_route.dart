part of ptv_api_client.api;

class V3StopOnRoute {
  /* Disruption information identifier(s) */
  List<int> disruptionIds = [];
  /* suburb of stop */
  String stopSuburb;
  /* Name of stop */
  String stopName;
  /* Stop identifier */
  int stopId;
  /* Transport mode identifier */
  int routeType;
  /* Geographic coordinate of latitude at stop */
  double stopLatitude;
  /* Geographic coordinate of longitude at stop */
  double stopLongitude;
  /* Sequence of the stop on the route/run; return 0 when route_id or run_id not specified. Order ascendingly by this field (when non zero) to get physical order (earliest first) of stops on the route_id/run_id. */
  int stopSequence;
  V3StopOnRoute();

  @override
  String toString() {
    return 'V3StopOnRoute[disruptionIds=$disruptionIds, stopSuburb=$stopSuburb, stopName=$stopName, stopId=$stopId, routeType=$routeType, stopLatitude=$stopLatitude, stopLongitude=$stopLongitude, stopSequence=$stopSequence, ]';
  }

  V3StopOnRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruption_ids'] == null) {
      disruptionIds = null;
    } else {
      disruptionIds = (json['disruption_ids'] as List).cast<int>();
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
    Map<String, dynamic> json = {};
    if (disruptionIds != null) json['disruption_ids'] = disruptionIds;
    if (stopSuburb != null) json['stop_suburb'] = stopSuburb;
    if (stopName != null) json['stop_name'] = stopName;
    if (stopId != null) json['stop_id'] = stopId;
    if (routeType != null) json['route_type'] = routeType;
    if (stopLatitude != null) json['stop_latitude'] = stopLatitude;
    if (stopLongitude != null) json['stop_longitude'] = stopLongitude;
    if (stopSequence != null) json['stop_sequence'] = stopSequence;
    return json;
  }

  static List<V3StopOnRoute> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopOnRoute>()
        : json.map((value) => V3StopOnRoute.fromJson(value)).toList();
  }

  static Map<String, V3StopOnRoute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopOnRoute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopOnRoute.fromJson(value));
    }
    return map;
  }
}
