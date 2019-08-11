import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3Departure
void main() {
  var instance = V3Departure();

  group('test V3Departure', () {
    // Stop identifier
    // int stopId (default value: null)
    test('to test the property `stopId`', () async {
      // TODO
    });

    // Route identifier
    // int routeId (default value: null)
    test('to test the property `routeId`', () async {
      // TODO
    });

    // Trip/service run identifier
    // int runId (default value: null)
    test('to test the property `runId`', () async {
      // TODO
    });

    // Direction of travel identifier
    // int directionId (default value: null)
    test('to test the property `directionId`', () async {
      // TODO
    });

    // Disruption information identifier(s)
    // List<int> disruptionIds (default value: [])
    test('to test the property `disruptionIds`', () async {
      // TODO
    });

    // Scheduled (i.e. timetabled) departure time and date in ISO 8601 UTC format
    // DateTime scheduledDepartureUtc (default value: null)
    test('to test the property `scheduledDepartureUtc`', () async {
      // TODO
    });

    // Real-time estimate of departure time and date in ISO 8601 UTC format
    // DateTime estimatedDepartureUtc (default value: null)
    test('to test the property `estimatedDepartureUtc`', () async {
      // TODO
    });

    // Indicates if the metropolitan train service is at the platform at the time of query; returns false for other modes
    // bool atPlatform (default value: null)
    test('to test the property `atPlatform`', () async {
      // TODO
    });

    // Platform number at stop (metropolitan train only; returns null for other modes)
    // String platformNumber (default value: null)
    test('to test the property `platformNumber`', () async {
      // TODO
    });

    // Flag indicating special condition for run (e.g. RR Reservations Required, GC Guaranteed Connection, DOO Drop Off Only, PUO Pick Up Only, MO Mondays only, TU Tuesdays only, WE Wednesdays only, TH Thursdays only, FR Fridays only, SS School days only; ignore E flag)
    // String flags (default value: null)
    test('to test the property `flags`', () async {
      // TODO
    });

    // Chronological sequence of the departure for the run on the route. Order ascendingly by this field to get chronological order (earliest first) of departures with the same route_id and run_id.
    // int departureSequence (default value: null)
    test('to test the property `departureSequence`', () async {
      // TODO
    });


  });

}
