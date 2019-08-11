import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3BulkDeparturesResponse
void main() {
  var instance = V3BulkDeparturesResponse();

  group('test V3BulkDeparturesResponse', () {
    // Contains departures for the requested stop and route(s). It includes details as to the route_direction and whether it is still valid.
    // List<V3BulkDeparturesUpdateResponse> responses (default value: [])
    test('to test the property `responses`', () async {
      // TODO
    });

    // A train station, tram stop, bus stop, regional coach stop or Night Bus stop
    // Map<String, V3BulkDeparturesStopResponse> stops (default value: {})
    test('to test the property `stops`', () async {
      // TODO
    });

    // Train lines, tram routes, bus routes, regional coach routes, Night Bus routes
    // List<V3Route> routes (default value: [])
    test('to test the property `routes`', () async {
      // TODO
    });

    // Individual trips/services of a route
    // List<V3Run> runs (default value: [])
    test('to test the property `runs`', () async {
      // TODO
    });

    // Directions of travel of route
    // List<V3Direction> directions (default value: [])
    test('to test the property `directions`', () async {
      // TODO
    });

    // Disruption information applicable to relevant routes or stops
    // Map<String, V3Disruption> disruptions (default value: {})
    test('to test the property `disruptions`', () async {
      // TODO
    });

    // V3Status status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });


  });

}
