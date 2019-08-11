# ptv_api_client.api.RouteTypesApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**routeTypesGetRouteTypes**](RouteTypesApi.md#routeTypesGetRouteTypes) | **GET** /v3/route_types | View all route types and their names


# **routeTypesGetRouteTypes**
> V3RouteTypesResponse routeTypesGetRouteTypes()

View all route types and their names

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = RouteTypesApi();

try { 
    var result = api_instance.routeTypesGetRouteTypes();
    print(result);
} catch (e) {
    print("Exception when calling RouteTypesApi->routeTypesGetRouteTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V3RouteTypesResponse**](V3RouteTypesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

