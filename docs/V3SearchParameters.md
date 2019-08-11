# ptv_api_client.model.V3SearchParameters

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeTypes** | **List&lt;int&gt;** | Filter by route_type; values returned via RouteTypes API (note: stops and routes are ordered by route_types specified) | [optional] [default to []]
**latitude** | **double** | Filter by geographic coordinate of latitude | [optional] [default to null]
**longitude** | **double** | Filter by geographic coordinate of longitude | [optional] [default to null]
**maxDistance** | **double** | Filter by maximum distance (in metres) from location specified via latitude and longitude parameters | [optional] [default to null]
**includeAddresses** | **bool** | Placeholder for future development; currently unavailable | [optional] [default to null]
**includeOutlets** | **bool** | Indicates if outlets will be returned in response (default &#x3D; true) | [optional] [default to null]
**matchStopBySuburb** | **bool** | Indicates whether to find stops by suburbs in the search term (default &#x3D; true) | [optional] [default to null]
**matchRouteBySuburb** | **bool** | Indicates whether to find routes by suburbs in the search term (default &#x3D; true) | [optional] [default to null]
**matchStopByGtfsStopId** | **bool** | Indicates whether to search for stops according to a metlink stop ID (default &#x3D; false) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


