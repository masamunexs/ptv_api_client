import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';

// tests for V3VehicleDescriptor
void main() {
  var instance = V3VehicleDescriptor();

  group('test V3VehicleDescriptor', () {
    // Operator name of the vehicle such as \"Metro Trains Melbourne\", \"Yarra Trams\", \"Ventura Bus Line\", \"CDC\" or \"Sita Bus Lines\" . May be null/empty.              Only available for train, tram, v/line and some bus runs.
    // String operator_ (default value: null)
    test('to test the property `operator_`', () async {
      // TODO
    });

    // Operator identifier of the vehicle such as \"26094\". May be null/empty. Only available for some tram and bus runs.
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Indicator if vehicle has a low floor. May be null. Only available for some tram runs.
    // bool lowFloor (default value: null)
    test('to test the property `lowFloor`', () async {
      // TODO
    });

    // Indicator if vehicle is air conditioned. May be null. Only available for some tram runs.
    // bool airConditioned (default value: null)
    test('to test the property `airConditioned`', () async {
      // TODO
    });

    // Vehicle description such as \"6 Car Comeng\", \"6 Car Xtrapolis\", \"3 Car Comeng\", \"6 Car Siemens\", \"3 Car Siemens\". May be null/empty.              Only available for some metropolitan train runs.
    // String description (default value: null)
    test('to test the property `description`', () async {
      // TODO
    });

    // Supplier of vehicle descriptor data.
    // String supplier (default value: null)
    test('to test the property `supplier`', () async {
      // TODO
    });


  });

}
