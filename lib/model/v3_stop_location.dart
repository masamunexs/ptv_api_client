part of ptv_api_client.api;

class V3StopLocation {
  V3StopGps gps;
  V3StopLocation();

  @override
  String toString() {
    return 'V3StopLocation[gps=$gps, ]';
  }

  V3StopLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['gps'] == null) {
      gps = null;
    } else {
      gps = V3StopGps.fromJson(json['gps']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (gps != null) json['gps'] = gps;
    return json;
  }

  static List<V3StopLocation> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopLocation>()
        : json.map((value) => V3StopLocation.fromJson(value)).toList();
  }

  static Map<String, V3StopLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopLocation.fromJson(value));
    }
    return map;
  }
}
