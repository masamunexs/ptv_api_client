import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';


/// tests for RunsApi
void main() {
  var instance = RunsApi();

  group('tests for RunsApi', () {
    // View all trip/service runs for a specific route ID
    //
    //Future<V3RunsResponse> runsForRoute(int routeId, { String token }) async 
    test('test runsForRoute', () async {
      // TODO
    });

    // View all trip/service runs for a specific route ID and route type
    //
    //Future<V3RunsResponse> runsForRouteAndRouteType(int routeId, int routeType, { String token }) async 
    test('test runsForRouteAndRouteType', () async {
      // TODO
    });

    // View all trip/service runs for a specific run ID
    //
    //Future<V3RunsResponse> runsForRun(int runId, { String token }) async 
    test('test runsForRun', () async {
      // TODO
    });

    // View the trip/service run for a specific run ID and route type
    //
    //Future<V3RunResponse> runsForRunAndRouteType(int runId, int routeType, { String token }) async 
    test('test runsForRunAndRouteType', () async {
      // TODO
    });

  });
}
