import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';


/// tests for DisruptionsApi
void main() {
  var instance = DisruptionsApi();

  group('tests for DisruptionsApi', () {
    // View all disruptions for all route types
    //
    //Future<V3DisruptionsResponse> disruptionsGetAllDisruptions({ List<int> routeTypes, List<int> disruptionModes, String disruptionStatus }) async 
    test('test disruptionsGetAllDisruptions', () async {
      // TODO
    });

    // View a specific disruption
    //
    //Future<V3DisruptionResponse> disruptionsGetDisruptionById(int disruptionId) async 
    test('test disruptionsGetDisruptionById', () async {
      // TODO
    });

    // Get all disruption modes
    //
    //Future<V3DisruptionModesResponse> disruptionsGetDisruptionModes() async 
    test('test disruptionsGetDisruptionModes', () async {
      // TODO
    });

    // View all disruptions for a particular route
    //
    //Future<V3DisruptionsResponse> disruptionsGetDisruptionsByRoute(int routeId, { String disruptionStatus }) async 
    test('test disruptionsGetDisruptionsByRoute', () async {
      // TODO
    });

    // View all disruptions for a particular route and stop
    //
    //Future<V3DisruptionsResponse> disruptionsGetDisruptionsByRouteAndStop(int routeId, int stopId, { String disruptionStatus }) async 
    test('test disruptionsGetDisruptionsByRouteAndStop', () async {
      // TODO
    });

    // View all disruptions for a particular stop
    //
    //Future<V3DisruptionsResponse> disruptionsGetDisruptionsByStop(int stopId, { String disruptionStatus }) async 
    test('test disruptionsGetDisruptionsByStop', () async {
      // TODO
    });

  });
}
