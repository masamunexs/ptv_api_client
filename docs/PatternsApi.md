# ptv_api_client.api.PatternsApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**patternsGetPatternByRun**](PatternsApi.md#patternsGetPatternByRun) | **GET** /v3/pattern/run/{run_id}/route_type/{route_type} | View the stopping pattern for a specific trip/service run


# **patternsGetPatternByRun**
> V3StoppingPattern patternsGetPatternByRun(runId, routeType, expand, stopId, dateUtc)

View the stopping pattern for a specific trip/service run

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = PatternsApi();
var runId = 56; // int | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API
var expand = []; // List<String> | Objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption. By default disruptions are expanded.
var stopId = 56; // int | Filter by stop_id; values returned by Stops API
var dateUtc = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the date and time of the request (ISO 8601 UTC format)

try { 
    var result = api_instance.patternsGetPatternByRun(runId, routeType, expand, stopId, dateUtc);
    print(result);
} catch (e) {
    print("Exception when calling PatternsApi->patternsGetPatternByRun: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **int**| Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API | [default to null]
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]
 **expand** | [**List&lt;String&gt;**](String.md)| Objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption. By default disruptions are expanded. | [default to []]
 **stopId** | **int**| Filter by stop_id; values returned by Stops API | [optional] [default to null]
 **dateUtc** | **DateTime**| Filter by the date and time of the request (ISO 8601 UTC format) | [optional] [default to null]

### Return type

[**V3StoppingPattern**](V3StoppingPattern.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

