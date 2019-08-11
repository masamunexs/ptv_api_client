part of ptv_api_client.api;

class V3DisruptionStop {
  /* Stop identifier */
  int stopId = null;
  /* Name of stop */
  String stopName = null;
  V3DisruptionStop();

  @override
  String toString() {
    return 'V3DisruptionStop[stopId=$stopId, stopName=$stopName, ]';
  }

  V3DisruptionStop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stop_id'] == null) {
      stopId = null;
    } else {
          stopId = json['stop_id'];
    }
    if (json['stop_name'] == null) {
      stopName = null;
    } else {
          stopName = json['stop_name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (stopId != null)
      json['stop_id'] = stopId;
    if (stopName != null)
      json['stop_name'] = stopName;
    return json;
  }

  static List<V3DisruptionStop> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DisruptionStop>() : json.map((value) => V3DisruptionStop.fromJson(value)).toList();
  }

  static Map<String, V3DisruptionStop> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionStop>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DisruptionStop.fromJson(value));
    }
    return map;
  }
}

