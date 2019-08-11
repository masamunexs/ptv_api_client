part of ptv_api_client.api;

class V3OutletGeolocationParameters {
  /* Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default = 300) */
  double maxDistance = null;
  /* Maximum number of results returned (default = 30) */
  int maxResults = null;
  V3OutletGeolocationParameters();

  @override
  String toString() {
    return 'V3OutletGeolocationParameters[maxDistance=$maxDistance, maxResults=$maxResults, ]';
  }

  V3OutletGeolocationParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['max_distance'] == null) {
      maxDistance = null;
    } else {
          maxDistance = json['max_distance'].toDouble();
    }
    if (json['max_results'] == null) {
      maxResults = null;
    } else {
          maxResults = json['max_results'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (maxDistance != null)
      json['max_distance'] = maxDistance;
    if (maxResults != null)
      json['max_results'] = maxResults;
    return json;
  }

  static List<V3OutletGeolocationParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<V3OutletGeolocationParameters>() : json.map((value) => V3OutletGeolocationParameters.fromJson(value)).toList();
  }

  static Map<String, V3OutletGeolocationParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3OutletGeolocationParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3OutletGeolocationParameters.fromJson(value));
    }
    return map;
  }
}

