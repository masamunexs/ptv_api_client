part of ptv_api_client.api;

class V3RouteDeparturesSpecificParameters {
  /* When set to true, all timetable information returned by Chronos will be sourced from the Parser timetables,              while when set to false (default state), the real-time departure information and operational time from              Metro CIS will continue to be returned where available. */
  bool trainScheduledTimetables;
  /* Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0. */
  bool lookBackwards;
  /* Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time) */
  DateTime dateUtc;
  /* Maximum number of results returned */
  int maxResults;
  /* Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only */
  bool includeCancelled;
  /* List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption */
  List<String> expand = [];
  //enum expandEnum {  All,  Stop,  Route,  Run,  Direction,  Disruption,  };{
  V3RouteDeparturesSpecificParameters();

  @override
  String toString() {
    return 'V3RouteDeparturesSpecificParameters[trainScheduledTimetables=$trainScheduledTimetables, lookBackwards=$lookBackwards, dateUtc=$dateUtc, maxResults=$maxResults, includeCancelled=$includeCancelled, expand=$expand, ]';
  }

  V3RouteDeparturesSpecificParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['train_scheduled_timetables'] == null) {
      trainScheduledTimetables = null;
    } else {
      trainScheduledTimetables = json['train_scheduled_timetables'];
    }
    if (json['look_backwards'] == null) {
      lookBackwards = null;
    } else {
      lookBackwards = json['look_backwards'];
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
    Map<String, dynamic> json = {};
    if (trainScheduledTimetables != null) {
      json['train_scheduled_timetables'] = trainScheduledTimetables;
    }
    if (lookBackwards != null) json['look_backwards'] = lookBackwards;
    if (dateUtc != null) {
      json['date_utc'] =
          dateUtc == null ? null : dateUtc.toUtc().toIso8601String();
    }
    if (maxResults != null) json['max_results'] = maxResults;
    if (includeCancelled != null) json['include_cancelled'] = includeCancelled;
    if (expand != null) json['expand'] = expand;
    return json;
  }

  static List<V3RouteDeparturesSpecificParameters> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<V3RouteDeparturesSpecificParameters>()
        : json
            .map((value) => V3RouteDeparturesSpecificParameters.fromJson(value))
            .toList();
  }

  static Map<String, V3RouteDeparturesSpecificParameters> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3RouteDeparturesSpecificParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3RouteDeparturesSpecificParameters.fromJson(value));
    }
    return map;
  }
}
