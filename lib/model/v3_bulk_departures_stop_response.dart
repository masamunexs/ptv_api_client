part of ptv_api_client.api;

class V3BulkDeparturesStopResponse {
  /* Name of stop */
  String stopName = null;
  /* Stop identifier */
  int stopId = null;
  /* Geographic coordinate of latitude at stop */
  double stopLatitude = null;
  /* Geographic coordinate of longitude at stop */
  double stopLongitude = null;
  /* suburb of stop */
  String stopSuburb = null;
  V3BulkDeparturesStopResponse();

  @override
  String toString() {
    return 'V3BulkDeparturesStopResponse[stopName=$stopName, stopId=$stopId, stopLatitude=$stopLatitude, stopLongitude=$stopLongitude, stopSuburb=$stopSuburb, ]';
  }

  V3BulkDeparturesStopResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['stop_suburb'] == null) {
      stopSuburb = null;
    } else {
          stopSuburb = json['stop_suburb'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (stopName != null)
      json['stop_name'] = stopName;
    if (stopId != null)
      json['stop_id'] = stopId;
    if (stopLatitude != null)
      json['stop_latitude'] = stopLatitude;
    if (stopLongitude != null)
      json['stop_longitude'] = stopLongitude;
    if (stopSuburb != null)
      json['stop_suburb'] = stopSuburb;
    return json;
  }

  static List<V3BulkDeparturesStopResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V3BulkDeparturesStopResponse>() : json.map((value) => V3BulkDeparturesStopResponse.fromJson(value)).toList();
  }

  static Map<String, V3BulkDeparturesStopResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3BulkDeparturesStopResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3BulkDeparturesStopResponse.fromJson(value));
    }
    return map;
  }
}

