import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3BulkDeparturesUpdateResponse
void main() {
  var instance = V3BulkDeparturesUpdateResponse();

  group('test V3BulkDeparturesUpdateResponse', () {
    // Timetabled and real-time service departures
    // List<V3Departure> departures (default value: [])
    test('to test the property `departures`', () async {
      // TODO
    });

    // Transport mode identifier
    // int routeType (default value: null)
    test('to test the property `routeType`', () async {
      // TODO
    });

    // Stop identifier
    // int stopId (default value: null)
    test('to test the property `stopId`', () async {
      // TODO
    });

    // V3BulkDeparturesRouteDirectionResponse requestedRouteDirection (default value: null)
    test('to test the property `requestedRouteDirection`', () async {
      // TODO
    });

    // The status of the route direction (changed | unchanged).              If changed, requests should change the requested_route_direction for the route_direction supplied.
    // int routeDirectionStatus (default value: null)
    test('to test the property `routeDirectionStatus`', () async {
      // TODO
    });

    // V3BulkDeparturesRouteDirectionResponse routeDirection (default value: null)
    test('to test the property `routeDirection`', () async {
      // TODO
    });


  });

}
