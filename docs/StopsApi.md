# ptv_api_client.api.StopsApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stopsStopDetails**](StopsApi.md#stopsStopDetails) | **GET** /v3/stops/{stop_id}/route_type/{route_type} | View facilities at a specific stop (Metro and V/Line stations only)
[**stopsStopsByGeolocation**](StopsApi.md#stopsStopsByGeolocation) | **GET** /v3/stops/location/{latitude},{longitude} | View all stops near a specific location
[**stopsStopsForRoute**](StopsApi.md#stopsStopsForRoute) | **GET** /v3/stops/route/{route_id}/route_type/{route_type} | View all stops on a specific route


# **stopsStopDetails**
> V3StopResponse stopsStopDetails(stopId, routeType, stopLocation, stopAmenities, stopAccessibility, stopContact, stopTicket, gtfs, stopStaffing, stopDisruptions)

View facilities at a specific stop (Metro and V/Line stations only)

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = StopsApi();
var stopId = 56; // int | Identifier of stop; values returned by Stops API
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API
var stopLocation = true; // bool | Indicates if stop location information will be returned (default = false)
var stopAmenities = true; // bool | Indicates if stop amenity information will be returned (default = false)
var stopAccessibility = true; // bool | Indicates if stop accessibility information will be returned (default = false)
var stopContact = true; // bool | Indicates if stop contact information will be returned (default = false)
var stopTicket = true; // bool | Indicates if stop ticket information will be returned (default = false)
var gtfs = true; // bool | Incdicates whether the stop_id is a GTFS ID or not
var stopStaffing = true; // bool | Indicates if stop staffing information will be returned (default = false)
var stopDisruptions = true; // bool | Indicates if stop disruption information will be returned (default = false)

try { 
    var result = api_instance.stopsStopDetails(stopId, routeType, stopLocation, stopAmenities, stopAccessibility, stopContact, stopTicket, gtfs, stopStaffing, stopDisruptions);
    print(result);
} catch (e) {
    print("Exception when calling StopsApi->stopsStopDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stopId** | **int**| Identifier of stop; values returned by Stops API | [default to null]
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]
 **stopLocation** | **bool**| Indicates if stop location information will be returned (default &#x3D; false) | [optional] [default to null]
 **stopAmenities** | **bool**| Indicates if stop amenity information will be returned (default &#x3D; false) | [optional] [default to null]
 **stopAccessibility** | **bool**| Indicates if stop accessibility information will be returned (default &#x3D; false) | [optional] [default to null]
 **stopContact** | **bool**| Indicates if stop contact information will be returned (default &#x3D; false) | [optional] [default to null]
 **stopTicket** | **bool**| Indicates if stop ticket information will be returned (default &#x3D; false) | [optional] [default to null]
 **gtfs** | **bool**| Incdicates whether the stop_id is a GTFS ID or not | [optional] [default to null]
 **stopStaffing** | **bool**| Indicates if stop staffing information will be returned (default &#x3D; false) | [optional] [default to null]
 **stopDisruptions** | **bool**| Indicates if stop disruption information will be returned (default &#x3D; false) | [optional] [default to null]

### Return type

[**V3StopResponse**](V3StopResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopsStopsByGeolocation**
> V3StopsByDistanceResponse stopsStopsByGeolocation(latitude, longitude, routeTypes, maxResults, maxDistance, stopDisruptions)

View all stops near a specific location

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = StopsApi();
var latitude = 3.4; // double | Geographic coordinate of latitude
var longitude = 3.4; // double | Geographic coordinate of longitude
var routeTypes = []; // List<int> | Filter by route_type; values returned via RouteTypes API
var maxResults = 56; // int | Maximum number of results returned (default = 30)
var maxDistance = 1.2; // double | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default = 300)
var stopDisruptions = true; // bool | Indicates if stop disruption information will be returned (default = false)

try { 
    var result = api_instance.stopsStopsByGeolocation(latitude, longitude, routeTypes, maxResults, maxDistance, stopDisruptions);
    print(result);
} catch (e) {
    print("Exception when calling StopsApi->stopsStopsByGeolocation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **double**| Geographic coordinate of latitude | [default to null]
 **longitude** | **double**| Geographic coordinate of longitude | [default to null]
 **routeTypes** | [**List&lt;int&gt;**](int.md)| Filter by route_type; values returned via RouteTypes API | [optional] [default to []]
 **maxResults** | **int**| Maximum number of results returned (default &#x3D; 30) | [optional] [default to null]
 **maxDistance** | **double**| Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default &#x3D; 300) | [optional] [default to null]
 **stopDisruptions** | **bool**| Indicates if stop disruption information will be returned (default &#x3D; false) | [optional] [default to null]

### Return type

[**V3StopsByDistanceResponse**](V3StopsByDistanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopsStopsForRoute**
> V3StopsOnRouteResponse stopsStopsForRoute(routeId, routeType, directionId, stopDisruptions)

View all stops on a specific route

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = StopsApi();
var routeId = 56; // int | Identifier of route; values returned by Routes API - v3/routes
var routeType = 56; // int | Number identifying transport mode; values returned via RouteTypes API
var directionId = 56; // int | An optional direction; values returned by Directions API. When this is set, stop sequence information is returned in the response.
var stopDisruptions = true; // bool | Indicates if stop disruption information will be returned (default = false)

try { 
    var result = api_instance.stopsStopsForRoute(routeId, routeType, directionId, stopDisruptions);
    print(result);
} catch (e) {
    print("Exception when calling StopsApi->stopsStopsForRoute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **int**| Identifier of route; values returned by Routes API - v3/routes | [default to null]
 **routeType** | **int**| Number identifying transport mode; values returned via RouteTypes API | [default to null]
 **directionId** | **int**| An optional direction; values returned by Directions API. When this is set, stop sequence information is returned in the response. | [optional] [default to null]
 **stopDisruptions** | **bool**| Indicates if stop disruption information will be returned (default &#x3D; false) | [optional] [default to null]

### Return type

[**V3StopsOnRouteResponse**](V3StopsOnRouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

