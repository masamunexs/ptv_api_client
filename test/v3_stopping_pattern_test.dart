import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3StoppingPattern
void main() {
  var instance = V3StoppingPattern();

  group('test V3StoppingPattern', () {
    // Disruption information applicable to relevant routes or stops
    // List<V3Disruption> disruptions (default value: [])
    test('to test the property `disruptions`', () async {
      // TODO
    });

    // Timetabled and real-time service departures
    // List<V3Departure> departures (default value: [])
    test('to test the property `departures`', () async {
      // TODO
    });

    // A train station, tram stop, bus stop, regional coach stop or Night Bus stop
    // Map<String, V3ResultStop> stops (default value: {})
    test('to test the property `stops`', () async {
      // TODO
    });

    // Train lines, tram routes, bus routes, regional coach routes, Night Bus routes
    // Map<String, V3Route> routes (default value: {})
    test('to test the property `routes`', () async {
      // TODO
    });

    // Individual trips/services of a route
    // Map<String, V3Run> runs (default value: {})
    test('to test the property `runs`', () async {
      // TODO
    });

    // Directions of travel of route
    // Map<String, V3Direction> directions (default value: {})
    test('to test the property `directions`', () async {
      // TODO
    });

    // V3Status status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });


  });

}
