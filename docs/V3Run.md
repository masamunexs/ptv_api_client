# ptv_api_client.model.V3Run

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runId** | **int** | Trip/service run identifier | [optional] [default to null]
**routeId** | **int** | Route identifier | [optional] [default to null]
**routeType** | **int** | Transport mode identifier | [optional] [default to null]
**finalStopId** | **int** | stop_id of final stop of run | [optional] [default to null]
**destinationName** | **String** | Name of destination of run | [optional] [default to null]
**status** | **String** | Status of metropolitan train run; returns \&quot;scheduled\&quot; for other modes | [optional] [default to null]
**directionId** | **int** | Direction of travel identifier | [optional] [default to null]
**runSequence** | **int** | Chronological sequence of the trip/service run on the route in direction. Order ascendingly by this field to get chronological order (earliest first) of runs with the same route_id and direction_id. | [optional] [default to null]
**expressStopCount** | **int** | The number of remaining skipped/express stations for the run/service from a stop | [optional] [default to null]
**vehiclePosition** | [**V3VehiclePosition**](V3VehiclePosition.md) |  | [optional] [default to null]
**vehicleDescriptor** | [**V3VehicleDescriptor**](V3VehicleDescriptor.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


