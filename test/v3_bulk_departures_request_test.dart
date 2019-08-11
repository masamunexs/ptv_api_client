import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3BulkDeparturesRequest
void main() {
  var instance = V3BulkDeparturesRequest();

  group('test V3BulkDeparturesRequest', () {
    // Collection of departure requests
    // List<V3StopDepartureRequest> requests (default value: [])
    test('to test the property `requests`', () async {
      // TODO
    });

    // Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time)
    // DateTime dateUtc (default value: null)
    test('to test the property `dateUtc`', () async {
      // TODO
    });

    // Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0.
    // bool lookBackwards (default value: null)
    test('to test the property `lookBackwards`', () async {
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
