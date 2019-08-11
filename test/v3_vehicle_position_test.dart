import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3VehiclePosition
void main() {
  var instance = V3VehiclePosition();

  group('test V3VehiclePosition', () {
    // Geographic coordinate of latitude of the vehicle when known. May be null.              Only available for some bus runs.
    // double latitude (default value: null)
    test('to test the property `latitude`', () async {
      // TODO
    });

    // Geographic coordinate of longitude of the vehicle when known.               Only available for some bus runs.
    // double longitude (default value: null)
    test('to test the property `longitude`', () async {
      // TODO
    });

    // Compass bearing of the vehicle when known, clockwise from True North, i.e., 0 is North and 90 is East. May be null.              Only available for some bus runs.
    // double bearing (default value: null)
    test('to test the property `bearing`', () async {
      // TODO
    });

    // Supplier of vehicle position data.
    // String supplier (default value: null)
    test('to test the property `supplier`', () async {
      // TODO
    });


  });

}
