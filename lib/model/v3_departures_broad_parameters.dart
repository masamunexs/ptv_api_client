part of ptv_api_client.api;

class V3DeparturesBroadParameters {
  /* Filter by platform number at stop */
  List<int> platformNumbers = [];
  /* Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} */
  int directionId = null;
  /* Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0. */
  bool lookBackwards = null;
  /* Indicates that stop_id parameter will accept \"GTFS stop_id\" data */
  bool gtfs = null;
  /* Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time) */
  DateTime dateUtc = null;
  /* Maximum number of results returned */
  int maxResults = null;
  /* Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only */
  bool includeCancelled = null;
  /* List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption */
  List<String> expand = [];
  //enum expandEnum {  All,  Stop,  Route,  Run,  Direction,  Disruption,  };{
  V3DeparturesBroadParameters();

  @override
  String toString() {
    return 'V3DeparturesBroadParameters[platformNumbers=$platformNumbers, directionId=$directionId, lookBackwards=$lookBackwards, gtfs=$gtfs, dateUtc=$dateUtc, maxResults=$maxResults, includeCancelled=$includeCancelled, expand=$expand, ]';
  }

  V3DeparturesBroadParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['platform_numbers'] == null) {
      platformNumbers = null;
    } else {
      platformNumbers = (json['platform_numbers'] as List).cast<int>();
    }
    if (json['direction_id'] == null) {
      directionId = null;
    } else {
          directionId = json['direction_id'];
    }
    if (json['look_backwards'] == null) {
      lookBackwards = null;
    } else {
          lookBackwards = json['look_backwards'];
    }
    if (json['gtfs'] == null) {
      gtfs = null;
    } else {
          gtfs = json['gtfs'];
    }
    if (json['date_utc'] == null) {
      dateUtc = null;
    } else {
      dateUtc = DateTime.parse(json['date_utc']);
    }
    if (json['max_results'] == null) {
      maxResults = null;
    } else {
          maxResults = json['max_results'];
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
    if (platformNumbers != null)
      json['platform_numbers'] = platformNumbers;
    if (directionId != null)
      json['direction_id'] = directionId;
    if (lookBackwards != null)
      json['look_backwards'] = lookBackwards;
    if (gtfs != null)
      json['gtfs'] = gtfs;
    if (dateUtc != null)
      json['date_utc'] = dateUtc == null ? null : dateUtc.toUtc().toIso8601String();
    if (maxResults != null)
      json['max_results'] = maxResults;
    if (includeCancelled != null)
      json['include_cancelled'] = includeCancelled;
    if (expand != null)
      json['expand'] = expand;
    return json;
  }

  static List<V3DeparturesBroadParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<V3DeparturesBroadParameters>() : json.map((value) => V3DeparturesBroadParameters.fromJson(value)).toList();
  }

  static Map<String, V3DeparturesBroadParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3DeparturesBroadParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3DeparturesBroadParameters.fromJson(value));
    }
    return map;
  }
}

