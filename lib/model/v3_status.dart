part of ptv_api_client.api;

class V3Status {
  /* API Version number */
  String version = null;
  /* API system health status (0=offline, 1=online) */
  int health = null;
  //enum healthEnum {  0,  1,  };{
  V3Status();

  @override
  String toString() {
    return 'V3Status[version=$version, health=$health, ]';
  }

  V3Status.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['health'] == null) {
      health = null;
    } else {
          health = json['health'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (version != null)
      json['version'] = version;
    if (health != null)
      json['health'] = health;
    return json;
  }

  static List<V3Status> listFromJson(List<dynamic> json) {
    return json == null ? List<V3Status>() : json.map((value) => V3Status.fromJson(value)).toList();
  }

  static Map<String, V3Status> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Status>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3Status.fromJson(value));
    }
    return map;
  }
}

