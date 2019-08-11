# ptv_api_client.model.V3BulkDeparturesResponse

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**responses** | [**List&lt;V3BulkDeparturesUpdateResponse&gt;**](V3BulkDeparturesUpdateResponse.md) | Contains departures for the requested stop and route(s). It includes details as to the route_direction and whether it is still valid. | [optional] [default to []]
**stops** | [**Map&lt;String, V3BulkDeparturesStopResponse&gt;**](V3BulkDeparturesStopResponse.md) | A train station, tram stop, bus stop, regional coach stop or Night Bus stop | [optional] [default to {}]
**routes** | [**List&lt;V3Route&gt;**](V3Route.md) | Train lines, tram routes, bus routes, regional coach routes, Night Bus routes | [optional] [default to []]
**runs** | [**List&lt;V3Run&gt;**](V3Run.md) | Individual trips/services of a route | [optional] [default to []]
**directions** | [**List&lt;V3Direction&gt;**](V3Direction.md) | Directions of travel of route | [optional] [default to []]
**disruptions** | [**Map&lt;String, V3Disruption&gt;**](V3Disruption.md) | Disruption information applicable to relevant routes or stops | [optional] [default to {}]
**status** | [**V3Status**](V3Status.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


