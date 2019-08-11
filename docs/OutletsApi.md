# ptv_api_client.api.OutletsApi

## Load the API package
```dart
import 'package:ptv_api_client/api.dart';
```

All URIs are relative to *http://timetableapi.ptv.vic.gov.au*

Method | HTTP request | Description
------------- | ------------- | -------------
[**outletsGetAllOutlets**](OutletsApi.md#outletsGetAllOutlets) | **GET** /v3/outlets | List all ticket outlets
[**outletsGetOutletsByGeolocation**](OutletsApi.md#outletsGetOutletsByGeolocation) | **GET** /v3/outlets/location/{latitude},{longitude} | List ticket outlets near a specific location


# **outletsGetAllOutlets**
> V3OutletResponse outletsGetAllOutlets(maxResults)

List all ticket outlets

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = OutletsApi();
var maxResults = 56; // int | Maximum number of results returned (default = 30)

try { 
    var result = api_instance.outletsGetAllOutlets(maxResults);
    print(result);
} catch (e) {
    print("Exception when calling OutletsApi->outletsGetAllOutlets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxResults** | **int**| Maximum number of results returned (default &#x3D; 30) | [optional] [default to null]

### Return type

[**V3OutletResponse**](V3OutletResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **outletsGetOutletsByGeolocation**
> V3OutletGeolocationResponse outletsGetOutletsByGeolocation(latitude, longitude, maxDistance, maxResults)

List ticket outlets near a specific location

### Example 
```dart
import 'package:ptv_api_client/api.dart';

var api_instance = OutletsApi();
var latitude = 3.4; // double | Geographic coordinate of latitude
var longitude = 3.4; // double | Geographic coordinate of longitude
var maxDistance = 1.2; // double | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default = 300)
var maxResults = 56; // int | Maximum number of results returned (default = 30)

try { 
    var result = api_instance.outletsGetOutletsByGeolocation(latitude, longitude, maxDistance, maxResults);
    print(result);
} catch (e) {
    print("Exception when calling OutletsApi->outletsGetOutletsByGeolocation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **double**| Geographic coordinate of latitude | [default to null]
 **longitude** | **double**| Geographic coordinate of longitude | [default to null]
 **maxDistance** | **double**| Filter by maximum distance (in metres) from location specified via latitude and longitude parameters (default &#x3D; 300) | [optional] [default to null]
 **maxResults** | **int**| Maximum number of results returned (default &#x3D; 30) | [optional] [default to null]

### Return type

[**V3OutletGeolocationResponse**](V3OutletGeolocationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

