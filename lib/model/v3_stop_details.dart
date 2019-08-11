part of ptv_api_client.api;

class V3StopDetails {
  /* Disruption information identifier(s) */
  List<int> disruptionIds = [];
  /* Type of metropolitan train station (i.e. \"Premium\", \"Host\" or \"Unstaffed\" station); returns null for V/Line train */
  String stationType = null;
  /* The definition applicable to the station_type; returns null for V/Line train */
  String stationDescription = null;
  /* Transport mode identifier */
  int routeType = null;
  
  V3StopLocation stopLocation = null;
  
  V3StopAmenityDetails stopAmenities = null;
  
  V3StopAccessibility stopAccessibility = null;
  
  V3StopStaffing stopStaffing = null;
  /* Stop identifier */
  int stopId = null;
  /* Name of stop */
  String stopName = null;
  V3StopDetails();

  @override
  String toString() {
    return 'V3StopDetails[disruptionIds=$disruptionIds, stationType=$stationType, stationDescription=$stationDescription, routeType=$routeType, stopLocation=$stopLocation, stopAmenities=$stopAmenities, stopAccessibility=$stopAccessibility, stopStaffing=$stopStaffing, stopId=$stopId, stopName=$stopName, ]';
  }

  V3StopDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['disruption_ids'] == null) {
      disruptionIds = null;
    } else {
      disruptionIds = (json['disruption_ids'] as List).cast<int>();
    }
    if (json['station_type'] == null) {
      stationType = null;
    } else {
          stationType = json['station_type'];
    }
    if (json['station_description'] == null) {
      stationDescription = null;
    } else {
          stationDescription = json['station_description'];
    }
    if (json['route_type'] == null) {
      routeType = null;
    } else {
          routeType = json['route_type'];
    }
    if (json['stop_location'] == null) {
      stopLocation = null;
    } else {
      stopLocation = V3StopLocation.fromJson(json['stop_location']);
    }
    if (json['stop_amenities'] == null) {
      stopAmenities = null;
    } else {
      stopAmenities = V3StopAmenityDetails.fromJson(json['stop_amenities']);
    }
    if (json['stop_accessibility'] == null) {
      stopAccessibility = null;
    } else {
      stopAccessibility = V3StopAccessibility.fromJson(json['stop_accessibility']);
    }
    if (json['stop_staffing'] == null) {
      stopStaffing = null;
    } else {
      stopStaffing = V3StopStaffing.fromJson(json['stop_staffing']);
    }
    if (json['stop_id'] == null) {
      stopId = null;
    } else {
          stopId = json['stop_id'];
    }
    if (json['stop_name'] == null) {
      stopName = null;
    } else {
          stopName = json['stop_name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (disruptionIds != null)
      json['disruption_ids'] = disruptionIds;
    if (stationType != null)
      json['station_type'] = stationType;
    if (stationDescription != null)
      json['station_description'] = stationDescription;
    if (routeType != null)
      json['route_type'] = routeType;
    if (stopLocation != null)
      json['stop_location'] = stopLocation;
    if (stopAmenities != null)
      json['stop_amenities'] = stopAmenities;
    if (stopAccessibility != null)
      json['stop_accessibility'] = stopAccessibility;
    if (stopStaffing != null)
      json['stop_staffing'] = stopStaffing;
    if (stopId != null)
      json['stop_id'] = stopId;
    if (stopName != null)
      json['stop_name'] = stopName;
    return json;
  }

  static List<V3StopDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<V3StopDetails>() : json.map((value) => V3StopDetails.fromJson(value)).toList();
  }

  static Map<String, V3StopDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3StopDetails.fromJson(value));
    }
    return map;
  }
}

