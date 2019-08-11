import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3RouteDeparturesSpecificParameters
void main() {
  var instance = V3RouteDeparturesSpecificParameters();

  group('test V3RouteDeparturesSpecificParameters', () {
    // When set to true, all timetable information returned by Chronos will be sourced from the Parser timetables,              while when set to false (default state), the real-time departure information and operational time from              Metro CIS will continue to be returned where available.
    // bool trainScheduledTimetables (default value: null)
    test('to test the property `trainScheduledTimetables`', () async {
      // TODO
    });

    // Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0.
    // bool lookBackwards (default value: null)
    test('to test the property `lookBackwards`', () async {
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
