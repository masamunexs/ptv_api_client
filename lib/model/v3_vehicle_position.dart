part of ptv_api_client.api;

class V3VehiclePosition {
  /* Geographic coordinate of latitude of the vehicle when known. May be null.              Only available for some bus runs. */
  double latitude;
  /* Geographic coordinate of longitude of the vehicle when known.               Only available for some bus runs. */
  double longitude;
  /* Compass bearing of the vehicle when known, clockwise from True North, i.e., 0 is North and 90 is East. May be null.              Only available for some bus runs. */
  double bearing;
  /* Supplier of vehicle position data. */
  String supplier;
  V3VehiclePosition();

  @override
  String toString() {
    return 'V3VehiclePosition[latitude=$latitude, longitude=$longitude, bearing=$bearing, supplier=$supplier, ]';
  }

  V3VehiclePosition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['bearing'] == null) {
      bearing = null;
    } else {
      bearing = json['bearing'];
    }
    if (json['supplier'] == null) {
      supplier = null;
    } else {
      supplier = json['supplier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (latitude != null) json['latitude'] = latitude;
    if (longitude != null) json['longitude'] = longitude;
    if (bearing != null) json['bearing'] = bearing;
    if (supplier != null) json['supplier'] = supplier;
    return json;
  }

  static List<V3VehiclePosition> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3VehiclePosition>()
        : json.map((value) => V3VehiclePosition.fromJson(value)).toList();
  }

  static Map<String, V3VehiclePosition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3VehiclePosition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3VehiclePosition.fromJson(value));
    }
    return map;
  }
}
