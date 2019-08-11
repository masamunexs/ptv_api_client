# ptv_api_client.model.V3Disruption

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disruptionId** | **int** | Disruption information identifier | [optional] [default to null]
**title** | **String** | Headline title summarising disruption information | [optional] [default to null]
**url** | **String** | URL of relevant article on PTV website | [optional] [default to null]
**description** | **String** | Description of the disruption | [optional] [default to null]
**disruptionStatus** | **String** | Status of the disruption (e.g. \&quot;Planned\&quot;, \&quot;Current\&quot;) | [optional] [default to null]
**disruptionType** | **String** | Type of disruption | [optional] [default to null]
**publishedOn** | [**DateTime**](DateTime.md) | Date and time disruption information is published on PTV website, in ISO 8601 UTC format | [optional] [default to null]
**lastUpdated** | [**DateTime**](DateTime.md) | Date and time disruption information was last updated by PTV, in ISO 8601 UTC format | [optional] [default to null]
**fromDate** | [**DateTime**](DateTime.md) | Date and time at which disruption begins, in ISO 8601 UTC format | [optional] [default to null]
**toDate** | [**DateTime**](DateTime.md) | Date and time at which disruption ends, in ISO 8601 UTC format (returns null if unknown) | [optional] [default to null]
**routes** | [**List&lt;V3DisruptionRoute&gt;**](V3DisruptionRoute.md) | Route relevant to a disruption (if applicable) | [optional] [default to []]
**stops** | [**List&lt;V3DisruptionStop&gt;**](V3DisruptionStop.md) | Stop relevant to a disruption (if applicable) | [optional] [default to []]
**colour** | **String** |  | [optional] [default to null]
**displayOnBoard** | **bool** |  | [optional] [default to null]
**displayStatus** | **bool** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


