part of ptv_api_client.api;

class V3OutletParameters {
  /* Maximum number of results returned (default = 30) */
  int maxResults;
  V3OutletParameters();

  @override
  String toString() {
    return 'V3OutletParameters[maxResults=$maxResults, ]';
  }

  V3OutletParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['max_results'] == null) {
      maxResults = null;
    } else {
      maxResults = json['max_results'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (maxResults != null) json['max_results'] = maxResults;
    return json;
  }

  static List<V3OutletParameters> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3OutletParameters>()
        : json.map((value) => V3OutletParameters.fromJson(value)).toList();
  }

  static Map<String, V3OutletParameters> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3OutletParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3OutletParameters.fromJson(value));
    }
    return map;
  }
}
