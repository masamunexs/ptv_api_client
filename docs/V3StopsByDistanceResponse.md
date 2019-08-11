# ptv_api_client.model.V3StopsByDistanceResponse

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stops** | [**List&lt;V3StopGeosearch&gt;**](V3StopGeosearch.md) | Train stations, tram stops, bus stops, regional coach stops or Night Bus stops | [optional] [default to []]
**disruptions** | [**Map&lt;String, V3Disruption&gt;**](V3Disruption.md) | Disruption information applicable to relevant routes or stops | [optional] [default to {}]
**status** | [**V3Status**](V3Status.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


