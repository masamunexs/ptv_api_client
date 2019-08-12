part of ptv_api_client.api;

class V3Disruption {
  /* Disruption information identifier */
  int disruptionId;
  /* Headline title summarising disruption information */
  String title;
  /* URL of relevant article on PTV website */
  String url;
  /* Description of the disruption */
  String description;
  /* Status of the disruption (e.g. \"Planned\", \"Current\") */
  String disruptionStatus;
  /* Type of disruption */
  String disruptionType;
  /* Date and time disruption information is published on PTV website, in ISO 8601 UTC format */
  DateTime publishedOn;
  /* Date and time disruption information was last updated by PTV, in ISO 8601 UTC format */
  DateTime lastUpdated;
  /* Date and time at which disruption begins, in ISO 8601 UTC format */
  DateTime fromDate;
  /* Date and time at which disruption ends, in ISO 8601 UTC format (returns null if unknown) */
  DateTime toDate;
  /* Route relevant to a disruption (if applicable) */
  List<V3DisruptionRoute> routes = [];
  /* Stop relevant to a disruption (if applicable) */
  List<V3DisruptionStop> stops = [];

  String colour;

  bool displayOnBoard;

  bool displayStatus;
  V3Disruption();

  @override
  String toString() {
    return 'V3Disruption[disruptionId=$disruptionId, title=$title, url=$url, description=$description, disruptionStatus=$disruptionStatus, disruptionType=$disruptionType, publishedOn=$publishedOn, lastUpdated=$lastUpdated, fromDate=$fromDate, toDate=$toDate, routes=$routes, stops=$stops, colour=$colour, displayOnBoard=$displayOnBoard, displayStatus=$displayStatus, ]';
  }

  V3Disruption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruption_id'] == null) {
      disruptionId = null;
    } else {
      disruptionId = json['disruption_id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
      title = json['title'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
      url = json['url'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
      description = json['description'];
    }
    if (json['disruption_status'] == null) {
      disruptionStatus = null;
    } else {
      disruptionStatus = json['disruption_status'];
    }
    if (json['disruption_type'] == null) {
      disruptionType = null;
    } else {
      disruptionType = json['disruption_type'];
    }
    if (json['published_on'] == null) {
      publishedOn = null;
    } else {
      publishedOn = DateTime.parse(json['published_on']);
    }
    if (json['last_updated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['last_updated']);
    }
    if (json['from_date'] == null) {
      fromDate = null;
    } else {
      fromDate = DateTime.parse(json['from_date']);
    }
    if (json['to_date'] == null) {
      toDate = null;
    } else {
      toDate = DateTime.parse(json['to_date']);
    }
    if (json['routes'] == null) {
      routes = null;
    } else {
      routes = V3DisruptionRoute.listFromJson(json['routes']);
    }
    if (json['stops'] == null) {
      stops = null;
    } else {
      stops = V3DisruptionStop.listFromJson(json['stops']);
    }
    if (json['colour'] == null) {
      colour = null;
    } else {
      colour = json['colour'];
    }
    if (json['display_on_board'] == null) {
      displayOnBoard = null;
    } else {
      displayOnBoard = json['display_on_board'];
    }
    if (json['display_status'] == null) {
      displayStatus = null;
    } else {
      displayStatus = json['display_status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (disruptionId != null) json['disruption_id'] = disruptionId;
    if (title != null) json['title'] = title;
    if (url != null) json['url'] = url;
    if (description != null) json['description'] = description;
    if (disruptionStatus != null) json['disruption_status'] = disruptionStatus;
    if (disruptionType != null) json['disruption_type'] = disruptionType;
    if (publishedOn != null) {
      json['published_on'] =
          publishedOn == null ? null : publishedOn.toUtc().toIso8601String();
    }
    if (lastUpdated != null) {
      json['last_updated'] =
          lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    }
    if (fromDate != null) {
      json['from_date'] =
          fromDate == null ? null : fromDate.toUtc().toIso8601String();
    }
    if (toDate != null) {
      json['to_date'] =
          toDate == null ? null : toDate.toUtc().toIso8601String();
    }
    if (routes != null) json['routes'] = routes;
    if (stops != null) json['stops'] = stops;
    if (colour != null) json['colour'] = colour;
    if (displayOnBoard != null) json['display_on_board'] = displayOnBoard;
    if (displayStatus != null) json['display_status'] = displayStatus;
    return json;
  }

  static List<V3Disruption> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3Disruption>()
        : json.map((value) => V3Disruption.fromJson(value)).toList();
  }

  static Map<String, V3Disruption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Disruption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3Disruption.fromJson(value));
    }
    return map;
  }
}
