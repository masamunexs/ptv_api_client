part of ptv_api_client.api;

class V3RouteServiceStatus {
  String description;

  DateTime timestamp;
  V3RouteServiceStatus();

  @override
  String toString() {
    return 'V3RouteServiceStatus[description=$description, timestamp=$timestamp, ]';
  }

  V3RouteServiceStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
      description = json['description'];
    }
    if (json['timestamp'] == null) {
      timestamp = null;
    } else {
      timestamp = DateTime.parse(json['timestamp']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (description != null) json['description'] = description;
    if (timestamp != null) {
      json['timestamp'] =
          timestamp == null ? null : timestamp.toUtc().toIso8601String();
    }
    return json;
  }

  static List<V3RouteServiceStatus> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3RouteServiceStatus>()
        : json.map((value) => V3RouteServiceStatus.fromJson(value)).toList();
  }

  static Map<String, V3RouteServiceStatus> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3RouteServiceStatus>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3RouteServiceStatus.fromJson(value));
    }
    return map;
  }
}
