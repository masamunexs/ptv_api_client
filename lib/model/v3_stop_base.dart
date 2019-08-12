part of ptv_api_client.api;

class V3StopBase {
  /* Stop identifier */
  int stopId;
  /* Name of stop */
  String stopName;
  V3StopBase();

  @override
  String toString() {
    return 'V3StopBase[stopId=$stopId, stopName=$stopName, ]';
  }

  V3StopBase.fromJson(Map<String, dynamic> json) {
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
    Map<String, dynamic> json = {};
    if (stopId != null) json['stop_id'] = stopId;
    if (stopName != null) json['stop_name'] = stopName;
    return json;
  }

  static List<V3StopBase> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopBase>()
        : json.map((value) => V3StopBase.fromJson(value)).toList();
  }

  static Map<String, V3StopBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = V3StopBase.fromJson(value));
    }
    return map;
  }
}
