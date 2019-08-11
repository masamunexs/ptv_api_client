# ptv_api_client.api.RunsApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runsForRoute**](RunsApi.md#runsForRoute) | **GET** /v3/runs/route/{route_id} | View all trip/service runs for a specific route ID
[**runsForRouteAndRouteType**](RunsApi.md#runsForRouteAndRouteType) | **GET** /v3/runs/route/{route_id}/route_type/{route_type} | View all trip/service runs for a specific route ID and route type
[**runsForRun**](RunsApi.md#runsForRun) | **GET** /v3/runs/{run_id} | View all trip/service runs for a specific run ID
[**runsForRunAndRouteType**](RunsApi.md#runsForRunAndRouteType) | **GET** /v3/runs/{run_id}/route_type/{route_type} | View the trip/service run for a specific run ID and route type


# **runsForRoute**
> V3RunsResponse runsForRoute(routeId)

View all trip/service runs for a specific route ID

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RunsApi();
var routeId = 56; // int | Identifier of route; values returned by Routes API - v3/routes.

try { 
    var result = api_instance.runsForRoute(routeId);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->runsForRoute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **int**| Identifier of route; values returned by Routes API - v3/routes. | [default to null]

### Return type

[**V3RunsResponse**](V3RunsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runsForRouteAndRouteType**
> V3RunsResponse runsForRouteAndRouteType(routeId, routeType)

View all trip/service runs for a specific route ID and route type

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RunsApi();
var routeId = 56; // int | Identifier of route; values returned by Routes API - v3/routes.
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API

try { 
    var result = api_instance.runsForRouteAndRouteType(routeId, routeType);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->runsForRouteAndRouteType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **int**| Identifier of route; values returned by Routes API - v3/routes. | [default to null]
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]

### Return type

[**V3RunsResponse**](V3RunsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runsForRun**
> V3RunsResponse runsForRun(runId)

View all trip/service runs for a specific run ID

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RunsApi();
var runId = 56; // int | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API

try { 
    var result = api_instance.runsForRun(runId);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->runsForRun: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **int**| Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API | [default to null]

### Return type

[**V3RunsResponse**](V3RunsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runsForRunAndRouteType**
> V3RunResponse runsForRunAndRouteType(runId, routeType)

View the trip/service run for a specific run ID and route type

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RunsApi();
var runId = 56; // int | Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API

try { 
    var result = api_instance.runsForRunAndRouteType(runId, routeType);
    print(result);
} catch (e) {
    print("Exception when calling RunsApi->runsForRunAndRouteType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **int**| Identifier of a trip/service run; values returned by Runs API - /v3/route/{route_id} and Departures API | [default to null]
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]

### Return type

[**V3RunResponse**](V3RunResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

