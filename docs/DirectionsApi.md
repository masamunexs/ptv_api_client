# ptv_api_client.api.DirectionsApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directionsForDirection**](DirectionsApi.md#directionsForDirection) | **GET** /v3/directions/{direction_id} | View all routes for a direction of travel
[**directionsForDirectionAndType**](DirectionsApi.md#directionsForDirectionAndType) | **GET** /v3/directions/{direction_id}/route_type/{route_type} | View all routes of a particular type for a direction of travel
[**directionsForRoute**](DirectionsApi.md#directionsForRoute) | **GET** /v3/directions/route/{route_id} | View directions that a route travels in


# **directionsForDirection**
> V3DirectionsResponse directionsForDirection(directionId)

View all routes for a direction of travel

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = DirectionsApi();
var directionId = 56; // int | Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}

try { 
    var result = api_instance.directionsForDirection(directionId);
    print(result);
} catch (e) {
    print("Exception when calling DirectionsApi->directionsForDirection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directionId** | **int**| Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [default to null]

### Return type

[**V3DirectionsResponse**](V3DirectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directionsForDirectionAndType**
> V3DirectionsResponse directionsForDirectionAndType(directionId, routeType)

View all routes of a particular type for a direction of travel

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = DirectionsApi();
var directionId = 56; // int | Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id}
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API

try { 
    var result = api_instance.directionsForDirectionAndType(directionId, routeType);
    print(result);
} catch (e) {
    print("Exception when calling DirectionsApi->directionsForDirectionAndType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directionId** | **int**| Identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [default to null]
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]

### Return type

[**V3DirectionsResponse**](V3DirectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directionsForRoute**
> V3DirectionsResponse directionsForRoute(routeId)

View directions that a route travels in

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = DirectionsApi();
var routeId = 56; // int | Identifier of route; values returned by Routes API - v3/routes

try { 
    var result = api_instance.directionsForRoute(routeId);
    print(result);
} catch (e) {
    print("Exception when calling DirectionsApi->directionsForRoute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **int**| Identifier of route; values returned by Routes API - v3/routes | [default to null]

### Return type

[**V3DirectionsResponse**](V3DirectionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

