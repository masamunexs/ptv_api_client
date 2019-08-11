# ptv_api_client.model.V3StopDepartureRequest

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routeType** | **int** | Number identifying transport mode; values returned via RouteTypes API | [optional] [default to null]
**stopId** | **int** | Identifier of stop; values returned by Stops API | [optional] [default to null]
**maxResults** | **int** | Maximum number of results returned | [optional] [default to null]
**gtfs** | **bool** | Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data and route_directions[x].route_id parameters will accept route_gtfs_id data | [optional] [default to null]
**routeDirections** | [**List&lt;V3StopDepartureRequestRouteDirection&gt;**](V3StopDepartureRequestRouteDirection.md) | The route directions to find departures for at this stop. | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


