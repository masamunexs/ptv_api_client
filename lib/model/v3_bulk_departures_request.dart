part of ptv_api_client.api;

class V3BulkDeparturesRequest {
  /* Collection of departure requests */
  List<V3StopDepartureRequest> requests = [];
  /* Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time) */
  DateTime dateUtc = null;
  /* Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0. */
  bool lookBackwards = null;
  /* Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only */
  bool includeCancelled = null;
  /* List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption */
  List<String> expand = [];
  //enum expandEnum {  All,  Stop,  Route,  Run,  Direction,  Disruption,  };{
  V3BulkDeparturesRequest();

  @override
  String toString() {
    return 'V3BulkDeparturesRequest[requests=$requests, dateUtc=$dateUtc, lookBackwards=$lookBackwards, includeCancelled=$includeCancelled, expand=$expand, ]';
  }

  V3BulkDeparturesRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['requests'] == null) {
      requests = null;
    } else {
      requests = V3StopDepartureRequest.listFromJson(json['requests']);
    }
    if (json['date_utc'] == null) {
      dateUtc = null;
    } else {
      dateUtc = DateTime.parse(json['date_utc']);
    }
    if (json['look_backwards'] == null) {
      lookBackwards = null;
    } else {
          lookBackwards = json['look_backwards'];
    }
    if (json['include_cancelled'] == null) {
      includeCancelled = null;
    } else {
          includeCancelled = json['include_cancelled'];
    }
    if (json['expand'] == null) {
      expand = null;
    } else {
      expand = (json['expand'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (requests != null)
      json['requests'] = requests;
    if (dateUtc != null)
      json['date_utc'] = dateUtc == null ? null : dateUtc.toUtc().toIso8601String();
    if (lookBackwards != null)
      json['look_backwards'] = lookBackwards;
    if (includeCancelled != null)
      json['include_cancelled'] = includeCancelled;
    if (expand != null)
      json['expand'] = expand;
    return json;
  }

  static List<V3BulkDeparturesRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<V3BulkDeparturesRequest>() : json.map((value) => V3BulkDeparturesRequest.fromJson(value)).toList();
  }

  static Map<String, V3BulkDeparturesRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3BulkDeparturesRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3BulkDeparturesRequest.fromJson(value));
    }
    return map;
  }
}

