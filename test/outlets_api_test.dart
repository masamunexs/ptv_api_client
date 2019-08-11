import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';


/// tests for OutletsApi
void main() {
  var instance = OutletsApi();

  group('tests for OutletsApi', () {
    // List all ticket outlets
    //
    //Future<V3OutletResponse> outletsGetAllOutlets({ int maxResults }) async 
    test('test outletsGetAllOutlets', () async {
      // TODO
    });

    // List ticket outlets near a specific location
    //
    //Future<V3OutletGeolocationResponse> outletsGetOutletsByGeolocation(double latitude, double longitude, { double maxDistance, int maxResults }) async 
    test('test outletsGetOutletsByGeolocation', () async {
      // TODO
    });

  });
}
