import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3SearchParameters
void main() {
  var instance = V3SearchParameters();

  group('test V3SearchParameters', () {
    // Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified)
    // List<int> routeTypes (default value: [])
    test('to test the property `routeTypes`', () async {
      // TODO
    });

    // Filter by geographic coordinate of latitude
    // double latitude (default value: null)
    test('to test the property `latitude`', () async {
      // TODO
    });

    // Filter by geographic coordinate of longitude
    // double longitude (default value: null)
    test('to test the property `longitude`', () async {
      // TODO
    });

    // Filter by maximum distance (in metres) from location specified via latitude and longitude parameters
    // double maxDistance (default value: null)
    test('to test the property `maxDistance`', () async {
      // TODO
    });

    // Placeholder for future development; currently unavailable
    // bool includeAddresses (default value: null)
    test('to test the property `includeAddresses`', () async {
      // TODO
    });

    // Indicates if outlets will be returned in response (default = true)
    // bool includeOutlets (default value: null)
    test('to test the property `includeOutlets`', () async {
      // TODO
    });

    // Indicates whether to find stops by suburbs in the search term (default = true)
    // bool matchStopBySuburb (default value: null)
    test('to test the property `matchStopBySuburb`', () async {
      // TODO
    });

    // Indicates whether to find routes by suburbs in the search term (default = true)
    // bool matchRouteBySuburb (default value: null)
    test('to test the property `matchRouteBySuburb`', () async {
      // TODO
    });

    // Indicates whether to search for stops according to a metlink stop ID (default = false)
    // bool matchStopByGtfsStopId (default value: null)
    test('to test the property `matchStopByGtfsStopId`', () async {
      // TODO
    });


  });

}
