import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3Run
void main() {
  var instance = V3Run();

  group('test V3Run', () {
    // Trip/service run identifier
    // int runId (default value: null)
    test('to test the property `runId`', () async {
      // TODO
    });

    // Route identifier
    // int routeId (default value: null)
    test('to test the property `routeId`', () async {
      // TODO
    });

    // Transport mode identifier
    // int routeType (default value: null)
    test('to test the property `routeType`', () async {
      // TODO
    });

    // stop_id of final stop of run
    // int finalStopId (default value: null)
    test('to test the property `finalStopId`', () async {
      // TODO
    });

    // Name of destination of run
    // String destinationName (default value: null)
    test('to test the property `destinationName`', () async {
      // TODO
    });

    // Status of metropolitan train run; returns \"scheduled\" for other modes
    // String status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Direction of travel identifier
    // int directionId (default value: null)
    test('to test the property `directionId`', () async {
      // TODO
    });

    // Chronological sequence of the trip/service run on the route in direction. Order ascendingly by this field to get chronological order (earliest first) of runs with the same route_id and direction_id.
    // int runSequence (default value: null)
    test('to test the property `runSequence`', () async {
      // TODO
    });

    // The number of remaining skipped/express stations for the run/service from a stop
    // int expressStopCount (default value: null)
    test('to test the property `expressStopCount`', () async {
      // TODO
    });

    // V3VehiclePosition vehiclePosition (default value: null)
    test('to test the property `vehiclePosition`', () async {
      // TODO
    });

    // V3VehicleDescriptor vehicleDescriptor (default value: null)
    test('to test the property `vehicleDescriptor`', () async {
      // TODO
    });


  });

}
