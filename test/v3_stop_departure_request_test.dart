import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3StopDepartureRequest
void main() {
  var instance = V3StopDepartureRequest();

  group('test V3StopDepartureRequest', () {
    // Number identifying transport mode; values returned via RouteTypes API
    // int routeType (default value: null)
    test('to test the property `routeType`', () async {
      // TODO
    });

    // Identifier of stop; values returned by Stops API
    // int stopId (default value: null)
    test('to test the property `stopId`', () async {
      // TODO
    });

    // Maximum number of results returned
    // int maxResults (default value: null)
    test('to test the property `maxResults`', () async {
      // TODO
    });

    // Indicates that stop_id parameter will accept \"GTFS stop_id\" data and route_directions[x].route_id parameters will accept route_gtfs_id data
    // bool gtfs (default value: null)
    test('to test the property `gtfs`', () async {
      // TODO
    });

    // The route directions to find departures for at this stop.
    // List<V3StopDepartureRequestRouteDirection> routeDirections (default value: [])
    test('to test the property `routeDirections`', () async {
      // TODO
    });


  });

}
