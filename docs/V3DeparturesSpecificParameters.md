# ptv_api_client.model.V3DeparturesSpecificParameters

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**directionId** | **int** | Filter by identifier of direction of travel; values returned by Directions API - /v3/directions/route/{route_id} | [optional] [default to null]
**lookBackwards** | **bool** | Indicates if filtering runs (and their departures) to those that arrive at destination before date_utc (default &#x3D; false). Requires max_results &amp;gt; 0. | [optional] [default to null]
**gtfs** | **bool** | Indicates that stop_id parameter will accept \&quot;GTFS stop_id\&quot; data | [optional] [default to null]
**dateUtc** | [**DateTime**](DateTime.md) | Filter by the date and time of the request (ISO 8601 UTC format) (default &#x3D; current date and time) | [optional] [default to null]
**maxResults** | **int** | Maximum number of results returned | [optional] [default to null]
**includeCancelled** | **bool** | Indicates if cancelled services (if they exist) are returned (default &#x3D; false) - metropolitan train only | [optional] [default to null]
**expand** | **List&lt;String&gt;** | List objects to be returned in full (i.e. expanded) - options include: all, stop, route, run, direction, disruption | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


