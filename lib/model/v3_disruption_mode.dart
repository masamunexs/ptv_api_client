part of ptv_api_client.api;

class V3DisruptionMode {
  /* Name of disruption mode */
  String disruptionModeName;
  /* Disruption mode identifier */
  int disruptionMode;
  V3DisruptionMode();

  @override
  String toString() {
    return 'V3DisruptionMode[disruptionModeName=$disruptionModeName, disruptionMode=$disruptionMode, ]';
  }

  V3DisruptionMode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruption_mode_name'] == null) {
      disruptionModeName = null;
    } else {
      disruptionModeName = json['disruption_mode_name'];
    }
    if (json['disruption_mode'] == null) {
      disruptionMode = null;
    } else {
      disruptionMode = json['disruption_mode'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (disruptionModeName != null) {
      json['disruption_mode_name'] = disruptionModeName;
    }
    if (disruptionMode != null) json['disruption_mode'] = disruptionMode;
    return json;
  }

  static List<V3DisruptionMode> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3DisruptionMode>()
        : json.map((value) => V3DisruptionMode.fromJson(value)).toList();
  }

  static Map<String, V3DisruptionMode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DisruptionMode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3DisruptionMode.fromJson(value));
    }
    return map;
  }
}
