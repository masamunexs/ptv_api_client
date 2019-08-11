part of ptv_api_client.api;

class V3StopGps {
  /* Geographic coordinate of latitude at stop */
  double latitude = null;
  /* Geographic coordinate of longitude at stop */
  double longitude = null;
  V3StopGps();

  @override
  String toString() {
    return 'V3StopGps[latitude=$latitude, longitude=$longitude, ]';
  }

  V3StopGps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['latitude'] == null) {
      latitude = null;
    } else {
          latitude = json['latitude'];
    }
    if (json['longitude'] == null) {
      longitude = null;
    } else {
          longitude = json['longitude'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (latitude != null)
      json['latitude'] = latitude;
    if (longitude != null)
      json['longitude'] = longitude;
    return json;
  }

  static List<V3StopGps> listFromJson(List<dynamic> json) {
    return json == null ? List<V3StopGps>() : json.map((value) => V3StopGps.fromJson(value)).toList();
  }

  static Map<String, V3StopGps> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopGps>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3StopGps.fromJson(value));
    }
    return map;
  }
}

