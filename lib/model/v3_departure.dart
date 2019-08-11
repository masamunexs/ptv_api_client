part of ptv_api_client.api;

class V3Departure {
  /* Stop identifier */
  int stopId = null;
  /* Route identifier */
  int routeId = null;
  /* Trip/service run identifier */
  int runId = null;
  /* Direction of travel identifier */
  int directionId = null;
  /* Disruption information identifier(s) */
  List<int> disruptionIds = [];
  /* Scheduled (i.e. timetabled) departure time and date in ISO 8601 UTC format */
  DateTime scheduledDepartureUtc = null;
  /* Real-time estimate of departure time and date in ISO 8601 UTC format */
  DateTime estimatedDepartureUtc = null;
  /* Indicates if the metropolitan train service is at the platform at the time of query; returns false for other modes */
  bool atPlatform = null;
  /* Platform number at stop (metropolitan train only; returns null for other modes) */
  String platformNumber = null;
  /* Flag indicating special condition for run (e.g. RR Reservations Required, GC Guaranteed Connection, DOO Drop Off Only, PUO Pick Up Only, MO Mondays only, TU Tuesdays only, WE Wednesdays only, TH Thursdays only, FR Fridays only, SS School days only; ignore E flag) */
  String flags = null;
  /* Chronological sequence of the departure for the run on the route. Order ascendingly by this field to get chronological order (earliest first) of departures with the same route_id and run_id. */
  int departureSequence = null;
  V3Departure();

  @override
  String toString() {
    return 'V3Departure[stopId=$stopId, routeId=$routeId, runId=$runId, directionId=$directionId, disruptionIds=$disruptionIds, scheduledDepartureUtc=$scheduledDepartureUtc, estimatedDepartureUtc=$estimatedDepartureUtc, atPlatform=$atPlatform, platformNumber=$platformNumber, flags=$flags, departureSequence=$departureSequence, ]';
  }

  V3Departure.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['stop_id'] == null) {
      stopId = null;
    } else {
          stopId = json['stop_id'];
    }
    if (json['route_id'] == null) {
      routeId = null;
    } else {
          routeId = json['route_id'];
    }
    if (json['run_id'] == null) {
      runId = null;
    } else {
          runId = json['run_id'];
    }
    if (json['direction_id'] == null) {
      directionId = null;
    } else {
          directionId = json['direction_id'];
    }
    if (json['disruption_ids'] == null) {
      disruptionIds = null;
    } else {
      disruptionIds = (json['disruption_ids'] as List).cast<int>();
    }
    if (json['scheduled_departure_utc'] == null) {
      scheduledDepartureUtc = null;
    } else {
      scheduledDepartureUtc = DateTime.parse(json['scheduled_departure_utc']);
    }
    if (json['estimated_departure_utc'] == null) {
      estimatedDepartureUtc = null;
    } else {
      estimatedDepartureUtc = DateTime.parse(json['estimated_departure_utc']);
    }
    if (json['at_platform'] == null) {
      atPlatform = null;
    } else {
          atPlatform = json['at_platform'];
    }
    if (json['platform_number'] == null) {
      platformNumber = null;
    } else {
          platformNumber = json['platform_number'];
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['departure_sequence'] == null) {
      departureSequence = null;
    } else {
          departureSequence = json['departure_sequence'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (stopId != null)
      json['stop_id'] = stopId;
    if (routeId != null)
      json['route_id'] = routeId;
    if (runId != null)
      json['run_id'] = runId;
    if (directionId != null)
      json['direction_id'] = directionId;
    if (disruptionIds != null)
      json['disruption_ids'] = disruptionIds;
    if (scheduledDepartureUtc != null)
      json['scheduled_departure_utc'] = scheduledDepartureUtc == null ? null : scheduledDepartureUtc.toUtc().toIso8601String();
    if (estimatedDepartureUtc != null)
      json['estimated_departure_utc'] = estimatedDepartureUtc == null ? null : estimatedDepartureUtc.toUtc().toIso8601String();
    if (atPlatform != null)
      json['at_platform'] = atPlatform;
    if (platformNumber != null)
      json['platform_number'] = platformNumber;
    if (flags != null)
      json['flags'] = flags;
    if (departureSequence != null)
      json['departure_sequence'] = departureSequence;
    return json;
  }

  static List<V3Departure> listFromJson(List<dynamic> json) {
    return json == null ? List<V3Departure>() : json.map((value) => V3Departure.fromJson(value)).toList();
  }

  static Map<String, V3Departure> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Departure>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3Departure.fromJson(value));
    }
    return map;
  }
}

