# ptv_api_client.api.DeparturesApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**departuresGetForStop**](DeparturesApi.md#departuresGetForStop) | **GET** /v3/departures/route_type/{route_type}/stop/{stop_id} | View departures for all routes from a stop
[**departuresGetForStopAndRoute**](DeparturesApi.md#departuresGetForStopAndRoute) | **GET** /v3/departures/route_type/{route_type}/stop/{stop_id}/route/{route_id} | View departures for a specific route from a stop


# **departuresGetForStop**
> V3DeparturesResponse departuresGetForStop(routeType, stopId, platformNumbers, directionId, lookBackwards, gtfs, dateUtc, maxResults, includeCancelled, expand, token)

View departures for all routes from a stop

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = DeparturesApi();
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API
var stopId = 56; // int | Identifier of stop; values returned by Stops API
var platformNumbers = []; // List<int> | Filter by platform number at stop
var directionId = 56; // int | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}
var lookBackwards = true; // bool | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0.
var gtfs = true; // bool | Indicates that stop_id parameter will accept \"GTFS stop_id\" data
var dateUtc = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time)
var maxResults = 56; // int | Maximum number of results returned
var includeCancelled = true; // bool | Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only
var expand = []; // List<String> | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption
var token = token_example; // String | Please ignore

try { 
    var result = api_instance.departuresGetForStop(routeType, stopId, platformNumbers, directionId, lookBackwards, gtfs, dateUtc, maxResults, includeCancelled, expand, token);
    print(result);
} catch (e) {
    print("Exception when calling DeparturesApi->departuresGetForStop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]
 **stopId** | **int**| Identifier of stop; values returned by Stops API | [default to null]
 **platformNumbers** | [**List&lt;int&gt;**](int.md)| Filter by platform number at stop | [optional] [default to []]
 **directionId** | **int**| Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [optional] [default to null]
 **lookBackwards** | **bool**| Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. | [optional] [default to null]
 **gtfs** | **bool**| Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data | [optional] [default to null]
 **dateUtc** | **DateTime**| Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) | [optional] [default to null]
 **maxResults** | **int**| Maximum number of results returned | [optional] [default to null]
 **includeCancelled** | **bool**| Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only | [optional] [default to null]
 **expand** | [**List&lt;String&gt;**](String.md)| List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption | [optional] [default to []]
 **token** | **String**| Please ignore | [optional] [default to null]

### Return type

[**V3DeparturesResponse**](V3DeparturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **departuresGetForStopAndRoute**
> V3DeparturesResponse departuresGetForStopAndRoute(routeType, stopId, routeId, directionId, lookBackwards, gtfs, dateUtc, maxResults, includeCancelled, expand, token)

View departures for a specific route from a stop

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = DeparturesApi();
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API
var stopId = 56; // int | Identifier of stop; values returned by Stops API
var routeId = routeId_example; // String | Identifier of route; values returned by Routes API - v3/routes
var directionId = 56; // int | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}
var lookBackwards = true; // bool | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default = false). Requires max_results &gt; 0.
var gtfs = true; // bool | Indicates that stop_id parameter will accept \"GTFS stop_id\" data
var dateUtc = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the date and time of the request (ISO 8601 UTC format) (default = current date and time)
var maxResults = 56; // int | Maximum number of results returned
var includeCancelled = true; // bool | Indicates if cancelled services (if they exist) are returned (default = false) - metropolitan train only
var expand = []; // List<String> | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption
var token = token_example; // String | Please ignore

try { 
    var result = api_instance.departuresGetForStopAndRoute(routeType, stopId, routeId, directionId, lookBackwards, gtfs, dateUtc, maxResults, includeCancelled, expand, token);
    print(result);
} catch (e) {
    print("Exception when calling DeparturesApi->departuresGetForStopAndRoute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]
 **stopId** | **int**| Identifier of stop; values returned by Stops API | [default to null]
 **routeId** | **String**| Identifier of route; values returned by Routes API - v3/routes | [default to null]
 **directionId** | **int**| Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [optional] [default to null]
 **lookBackwards** | **bool**| Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. | [optional] [default to null]
 **gtfs** | **bool**| Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data | [optional] [default to null]
 **dateUtc** | **DateTime**| Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) | [optional] [default to null]
 **maxResults** | **int**| Maximum number of results returned | [optional] [default to null]
 **includeCancelled** | **bool**| Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only | [optional] [default to null]
 **expand** | [**List&lt;String&gt;**](String.md)| List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption | [optional] [default to []]
 **token** | **String**| Please ignore | [optional] [default to null]

### Return type

[**V3DeparturesResponse**](V3DeparturesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

