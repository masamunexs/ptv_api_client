import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3DeparturesBroadParameters
void main() {
  var instance = V3DeparturesBroadParameters();

  group('test V3DeparturesBroadParameters', () {
    // Filter by platform number at stop
    // List<int> platformNumbers (default value: [])
    test('to test the property `platformNumbers`', () async {
      // TODO
    });

    // Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}
    // int directionId (default value: null)
    test('to test the property `directionId`', () async {
      // TODO
    });

    // Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0.
    // bool lookBackwards (default value: null)
    test('to test the property `lookBackwards`', () async {
      // TODO
    });

    // Indicates that stop_id parameter will accept \"GTFS stop_id\" data
    // bool gtfs (default value: null)
    test('to test the property `gtfs`', () async {
      // TODO
    });

    // Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time)
    // DateTime dateUtc (default value: null)
    test('to test the property `dateUtc`', () async {
      // TODO
    });

    // Maximum number of results returned
    // int maxResults (default value: null)
    test('to test the property `maxResults`', () async {
      // TODO
    });

    // Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only
    // bool includeCancelled (default value: null)
    test('to test the property `includeCancelled`', () async {
      // TODO
    });

    // List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption
    // List<String> expand (default value: [])
    test('to test the property `expand`', () async {
      // TODO
    });


  });

}
