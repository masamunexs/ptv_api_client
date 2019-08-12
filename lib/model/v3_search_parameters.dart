part of ptv_api_client.api;

class V3SearchParameters {
  /* Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) */
  List<int> routeTypes = [];
  //enum routeTypesEnum {  0,  1,  2,  3,  4,  };{
  /* Filter by geographic coordinate of latitude */
  double latitude;
  /* Filter by geographic coordinate of longitude */
  double longitude;
  /* Filter by maximum distance (in metres) from location specified via latitude and longitude parameters */
  double maxDistance;
  /* Placeholder for future development; currently unavailable */
  bool includeAddresses;
  /* Indicates if outlets will be returned in response (default = true) */
  bool includeOutlets;
  /* Indicates whether to find stops by suburbs in the search term (default = true) */
  bool matchStopBySuburb;
  /* Indicates whether to find routes by suburbs in the search term (default = true) */
  bool matchRouteBySuburb;
  /* Indicates whether to search for stops according to a metlink stop ID (default = false) */
  bool matchStopByGtfsStopId;
  V3SearchParameters();

  @override
  String toString() {
    return 'V3SearchParameters[routeTypes=$routeTypes, latitude=$latitude, longitude=$longitude, maxDistance=$maxDistance, includeAddresses=$includeAddresses, includeOutlets=$includeOutlets, matchStopBySuburb=$matchStopBySuburb, matchRouteBySuburb=$matchRouteBySuburb, matchStopByGtfsStopId=$matchStopByGtfsStopId, ]';
  }

  V3SearchParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['route_types'] == null) {
      routeTypes = null;
    } else {
      routeTypes = (json['route_types'] as List).cast<int>();
    }
    if (json['latitude'] == null) {
      latitude = null;
    } else {
      latitude = json['latitude'];
    }
    if (json['longitude'] == null) {
      longitude = null;
    } else {
      longitude = json['longitude'];
    }
    if (json['max_distance'] == null) {
      maxDistance = null;
    } else {
      maxDistance = json['max_distance'];
    }
    if (json['include_addresses'] == null) {
      includeAddresses = null;
    } else {
      includeAddresses = json['include_addresses'];
    }
    if (json['include_outlets'] == null) {
      includeOutlets = null;
    } else {
      includeOutlets = json['include_outlets'];
    }
    if (json['match_stop_by_suburb'] == null) {
      matchStopBySuburb = null;
    } else {
      matchStopBySuburb = json['match_stop_by_suburb'];
    }
    if (json['match_route_by_suburb'] == null) {
      matchRouteBySuburb = null;
    } else {
      matchRouteBySuburb = json['match_route_by_suburb'];
    }
    if (json['match_stop_by_gtfs_stop_id'] == null) {
      matchStopByGtfsStopId = null;
    } else {
      matchStopByGtfsStopId = json['match_stop_by_gtfs_stop_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (routeTypes != null) json['route_types'] = routeTypes;
    if (latitude != null) json['latitude'] = latitude;
    if (longitude != null) json['longitude'] = longitude;
    if (maxDistance != null) json['max_distance'] = maxDistance;
    if (includeAddresses != null) json['include_addresses'] = includeAddresses;
    if (includeOutlets != null) json['include_outlets'] = includeOutlets;
    if (matchStopBySuburb != null) {
      json['match_stop_by_suburb'] = matchStopBySuburb;
    }
    if (matchRouteBySuburb != null) {
      json['match_route_by_suburb'] = matchRouteBySuburb;
    }
    if (matchStopByGtfsStopId != null) {
      json['match_stop_by_gtfs_stop_id'] = matchStopByGtfsStopId;
    }
    return json;
  }

  static List<V3SearchParameters> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3SearchParameters>()
        : json.map((value) => V3SearchParameters.fromJson(value)).toList();
  }

  static Map<String, V3SearchParameters> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3SearchParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3SearchParameters.fromJson(value));
    }
    return map;
  }
}
