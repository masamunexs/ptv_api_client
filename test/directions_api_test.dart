import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';


/// tests for DirectionsApi
void main() {
  var instance = DirectionsApi();

  group('tests for DirectionsApi', () {
    // View all routes for a direction of travel
    //
    //Future<V3DirectionsResponse> directionsForDirection(int directionId, { String token }) async 
    test('test directionsForDirection', () async {
      // TODO
    });

    // View all routes of a particular type for a direction of travel
    //
    //Future<V3DirectionsResponse> directionsForDirectionAndType(int directionId, int routeType, { String token }) async 
    test('test directionsForDirectionAndType', () async {
      // TODO
    });

    // View directions that a route travels in
    //
    //Future<V3DirectionsResponse> directionsForRoute(int routeId, { String token }) async 
    test('test directionsForRoute', () async {
      // TODO
    });

  });
}
