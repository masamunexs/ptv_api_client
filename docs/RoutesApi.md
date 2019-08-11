# ptv_api_client.api.RoutesApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**routesOneOrMoreRoutes**](RoutesApi.md#routesOneOrMoreRoutes) | **GET** /v3/routes | View route names and numbers for all routes
[**routesRouteFromId**](RoutesApi.md#routesRouteFromId) | **GET** /v3/routes/{route_id} | View route name and number for specific route ID


# **routesOneOrMoreRoutes**
> V3RouteResponse routesOneOrMoreRoutes(routeTypes, routeName, token)

View route names and numbers for all routes

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RoutesApi();
var routeTypes = []; // List<int> | Filter by route_type; values returned via RouteTypes API
var routeName = routeName_example; // String | Filter by name  of route (accepts partial route name matches)
var token = token_example; // String | Please ignore

try { 
    var result = api_instance.routesOneOrMoreRoutes(routeTypes, routeName, token);
    print(result);
} catch (e) {
    print("Exception when calling RoutesApi->routesOneOrMoreRoutes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeTypes** | [**List&lt;int&gt;**](int.md)| Filter by route_type; values returned via RouteTypes API | [optional] [default to []]
 **routeName** | **String**| Filter by name  of route (accepts partial route name matches) | [optional] [default to null]
 **token** | **String**| Please ignore | [optional] [default to null]

### Return type

[**V3RouteResponse**](V3RouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routesRouteFromId**
> V3RouteResponse routesRouteFromId(routeId, token)

View route name and number for specific route ID

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RoutesApi();
var routeId = 56; // int | Identifier of route; values returned by Departures, Directions and Disruptions APIs
var token = token_example; // String | Please ignore

try { 
    var result = api_instance.routesRouteFromId(routeId, token);
    print(result);
} catch (e) {
    print("Exception when calling RoutesApi->routesRouteFromId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **int**| Identifier of route; values returned by Departures, Directions and Disruptions APIs | [default to null]
 **token** | **String**| Please ignore | [optional] [default to null]

### Return type

[**V3RouteResponse**](V3RouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

