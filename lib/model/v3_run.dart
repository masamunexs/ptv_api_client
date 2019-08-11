part of ptv_api_client.api;

class V3Run {
  /* Trip/service run identifier */
  int runId = null;
  /* Route identifier */
  int routeId = null;
  /* Transport mode identifier */
  int routeType = null;
  /* stop_id of final stop of run */
  int finalStopId = null;
  /* Name of destination of run */
  String destinationName = null;
  /* Status of metropolitan train run; returns \"scheduled\" for other modes */
  String status = null;
  /* Direction of travel identifier */
  int directionId = null;
  /* Chronological sequence of the trip/service run on the route in direction. Order ascendingly by this field to get chronological order (earliest first) of runs with the same route_id and direction_id. */
  int runSequence = null;
  /* The number of remaining skipped/express stations for the run/service from a stop */
  int expressStopCount = null;
  
  V3VehiclePosition vehiclePosition = null;
  
  V3VehicleDescriptor vehicleDescriptor = null;
  V3Run();

  @override
  String toString() {
    return 'V3Run[runId=$runId, routeId=$routeId, routeType=$routeType, finalStopId=$finalStopId, destinationName=$destinationName, status=$status, directionId=$directionId, runSequence=$runSequence, expressStopCount=$expressStopCount, vehiclePosition=$vehiclePosition, vehicleDescriptor=$vehicleDescriptor, ]';
  }

  V3Run.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['run_id'] == null) {
      runId = null;
    } else {
          runId = json['run_id'];
    }
    if (json['route_id'] == null) {
      routeId = null;
    } else {
          routeId = json['route_id'];
    }
    if (json['route_type'] == null) {
      routeType = null;
    } else {
          routeType = json['route_type'];
    }
    if (json['final_stop_id'] == null) {
      finalStopId = null;
    } else {
          finalStopId = json['final_stop_id'];
    }
    if (json['destination_name'] == null) {
      destinationName = null;
    } else {
          destinationName = json['destination_name'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['direction_id'] == null) {
      directionId = null;
    } else {
          directionId = json['direction_id'];
    }
    if (json['run_sequence'] == null) {
      runSequence = null;
    } else {
          runSequence = json['run_sequence'];
    }
    if (json['express_stop_count'] == null) {
      expressStopCount = null;
    } else {
          expressStopCount = json['express_stop_count'];
    }
    if (json['vehicle_position'] == null) {
      vehiclePosition = null;
    } else {
      vehiclePosition = V3VehiclePosition.fromJson(json['vehicle_position']);
    }
    if (json['vehicle_descriptor'] == null) {
      vehicleDescriptor = null;
    } else {
      vehicleDescriptor = V3VehicleDescriptor.fromJson(json['vehicle_descriptor']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (runId != null)
      json['run_id'] = runId;
    if (routeId != null)
      json['route_id'] = routeId;
    if (routeType != null)
      json['route_type'] = routeType;
    if (finalStopId != null)
      json['final_stop_id'] = finalStopId;
    if (destinationName != null)
      json['destination_name'] = destinationName;
    if (status != null)
      json['status'] = status;
    if (directionId != null)
      json['direction_id'] = directionId;
    if (runSequence != null)
      json['run_sequence'] = runSequence;
    if (expressStopCount != null)
      json['express_stop_count'] = expressStopCount;
    if (vehiclePosition != null)
      json['vehicle_position'] = vehiclePosition;
    if (vehicleDescriptor != null)
      json['vehicle_descriptor'] = vehicleDescriptor;
    return json;
  }

  static List<V3Run> listFromJson(List<dynamic> json) {
    return json == null ? List<V3Run>() : json.map((value) => V3Run.fromJson(value)).toList();
  }

  static Map<String, V3Run> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Run>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3Run.fromJson(value));
    }
    return map;
  }
}

