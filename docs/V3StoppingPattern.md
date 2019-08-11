# ptv_api_client.model.V3StoppingPattern

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disruptions** | [**List&lt;V3Disruption&gt;**](V3Disruption.md) | Disruption information applicable to relevant routes or stops | [optional] [default to []]
**departures** | [**List&lt;V3Departure&gt;**](V3Departure.md) | Timetabled and real-time service departures | [optional] [default to []]
**stops** | [**Map&lt;String, V3ResultStop&gt;**](V3ResultStop.md) | A train station, tram stop, bus stop, regional coach stop or Night Bus stop | [optional] [default to {}]
**routes** | [**Map&lt;String, V3Route&gt;**](V3Route.md) | Train lines, tram routes, bus routes, regional coach routes, Night Bus routes | [optional] [default to {}]
**runs** | [**Map&lt;String, V3Run&gt;**](V3Run.md) | Individual trips/services of a route | [optional] [default to {}]
**directions** | [**Map&lt;String, V3Direction&gt;**](V3Direction.md) | Directions of travel of route | [optional] [default to {}]
**status** | [**V3Status**](V3Status.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


