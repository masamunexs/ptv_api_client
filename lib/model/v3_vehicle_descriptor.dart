part of ptv_api_client.api;

class V3VehicleDescriptor {
  /* Operator name of the vehicle such as \"Metro Trains Melbourne\", \"Yarra Trams\", \"Ventura Bus Line\", \"CDC\" or \"Sita Bus Lines\" . May be null/empty.              Only available for train, tram, v/line and some bus runs. */
  String operator_;
  /* Operator identifier of the vehicle such as \"26094\". May be null/empty. Only available for some tram and bus runs. */
  String id;
  /* Indicator if vehicle has a low floor. May be null. Only available for some tram runs. */
  bool lowFloor;
  /* Indicator if vehicle is air conditioned. May be null. Only available for some tram runs. */
  bool airConditioned;
  /* Vehicle description such as \"6 Car Comeng\", \"6 Car Xtrapolis\", \"3 Car Comeng\", \"6 Car Siemens\", \"3 Car Siemens\". May be null/empty.              Only available for some metropolitan train runs. */
  String description;
  /* Supplier of vehicle descriptor data. */
  String supplier;
  V3VehicleDescriptor();

  @override
  String toString() {
    return 'V3VehicleDescriptor[operator_=$operator_, id=$id, lowFloor=$lowFloor, airConditioned=$airConditioned, description=$description, supplier=$supplier, ]';
  }

  V3VehicleDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['operator'] == null) {
      operator_ = null;
    } else {
      operator_ = json['operator'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
      id = json['id'];
    }
    if (json['low_floor'] == null) {
      lowFloor = null;
    } else {
      lowFloor = json['low_floor'];
    }
    if (json['air_conditioned'] == null) {
      airConditioned = null;
    } else {
      airConditioned = json['air_conditioned'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
      description = json['description'];
    }
    if (json['supplier'] == null) {
      supplier = null;
    } else {
      supplier = json['supplier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (operator_ != null) json['operator'] = operator_;
    if (id != null) json['id'] = id;
    if (lowFloor != null) json['low_floor'] = lowFloor;
    if (airConditioned != null) json['air_conditioned'] = airConditioned;
    if (description != null) json['description'] = description;
    if (supplier != null) json['supplier'] = supplier;
    return json;
  }

  static List<V3VehicleDescriptor> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3VehicleDescriptor>()
        : json.map((value) => V3VehicleDescriptor.fromJson(value)).toList();
  }

  static Map<String, V3VehicleDescriptor> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3VehicleDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3VehicleDescriptor.fromJson(value));
    }
    return map;
  }
}
