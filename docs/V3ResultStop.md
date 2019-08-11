# ptv_api_client.model.V3ResultStop

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stopDistance** | **double** | Distance of stop from input location (in metres); returns 0 if no location is input | [optional] [default to null]
**stopSuburb** | **String** | suburb of stop | [optional] [default to null]
**stopName** | **String** | Name of stop | [optional] [default to null]
**stopId** | **int** | Stop identifier | [optional] [default to null]
**routeType** | **int** | Transport mode identifier | [optional] [default to null]
**stopLatitude** | **double** | Geographic coordinate of latitude at stop | [optional] [default to null]
**stopLongitude** | **double** | Geographic coordinate of longitude at stop | [optional] [default to null]
**stopSequence** | **int** | Sequence of the stop on the route/run; return 0 when route_id or run_id not specified. Order ascendingly by this field (when non zero) to get physical order (earliest first) of stops on the route_id/run_id. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


