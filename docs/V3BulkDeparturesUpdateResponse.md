# ptv_api_client.model.V3BulkDeparturesUpdateResponse

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**departures** | [**List&lt;V3Departure&gt;**](V3Departure.md) | Timetabled and real-time service departures | [optional] [default to []]
**routeType** | **int** | Transport mode identifier | [optional] [default to null]
**stopId** | **int** | Stop identifier | [optional] [default to null]
**requestedRouteDirection** | [**V3BulkDeparturesRouteDirectionResponse**](V3BulkDeparturesRouteDirectionResponse.md) |  | [optional] [default to null]
**routeDirectionStatus** | **int** | The status of the route direction (changed | unchanged).              If changed, requests should change the requested_route_direction for the route_direction supplied. | [optional] [default to null]
**routeDirection** | [**V3BulkDeparturesRouteDirectionResponse**](V3BulkDeparturesRouteDirectionResponse.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


