import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3StopGeosearch
void main() {
  var instance = V3StopGeosearch();

  group('test V3StopGeosearch', () {
    // Disruption information identifier(s)
    // List<int> disruptionIds (default value: [])
    test('to test the property `disruptionIds`', () async {
      // TODO
    });

    // Distance of stop from input location (in metres); returns 0 if no location is input
    // double stopDistance (default value: null)
    test('to test the property `stopDistance`', () async {
      // TODO
    });

    // suburb of stop
    // String stopSuburb (default value: null)
    test('to test the property `stopSuburb`', () async {
      // TODO
    });

    // Name of stop
    // String stopName (default value: null)
    test('to test the property `stopName`', () async {
      // TODO
    });

    // Stop identifier
    // int stopId (default value: null)
    test('to test the property `stopId`', () async {
      // TODO
    });

    // Transport mode identifier
    // int routeType (default value: null)
    test('to test the property `routeType`', () async {
      // TODO
    });

    // Geographic coordinate of latitude at stop
    // double stopLatitude (default value: null)
    test('to test the property `stopLatitude`', () async {
      // TODO
    });

    // Geographic coordinate of longitude at stop
    // double stopLongitude (default value: null)
    test('to test the property `stopLongitude`', () async {
      // TODO
    });

    // Sequence of the stop on the route/run; return 0 when route_id or run_id not specified. Order ascendingly by this field (when non zero) to get physical order (earliest first) of stops on the route_id/run_id.
    // int stopSequence (default value: null)
    test('to test the property `stopSequence`', () async {
      // TODO
    });


  });

}
