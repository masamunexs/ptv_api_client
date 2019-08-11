import 'package:ptv_api_client/api.dart';
import 'package:test/test.dart';


/// tests for DeparturesApi
void main() {
  var instance = DeparturesApi();

  group('tests for DeparturesApi', () {
    // View departures for all routes from a stop
    //
    //Future<V3DeparturesResponse> departuresGetForStop(int routeType, int stopId, { List<int> platformNumbers, int directionId, bool lookBackwards, bool gtfs, DateTime dateUtc, int maxResults, bool includeCancelled, List<String> expand, String token }) async 
    test('test departuresGetForStop', () async {
      // TODO
    });

    // View departures for a specific route from a stop
    //
    //Future<V3DeparturesResponse> departuresGetForStopAndRoute(int routeType, int stopId, String routeId, { int directionId, bool lookBackwards, bool gtfs, DateTime dateUtc, int maxResults, bool includeCancelled, List<String> expand, String token }) async 
    test('test departuresGetForStopAndRoute', () async {
      // TODO
    });

  });
}
