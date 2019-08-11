# ptv_api_client.model.V3Departure

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stopId** | **int** | Stop identifier | [optional] [default to null]
**routeId** | **int** | Route identifier | [optional] [default to null]
**runId** | **int** | Trip/service run identifier | [optional] [default to null]
**directionId** | **int** | Direction of travel identifier | [optional] [default to null]
**disruptionIds** | **List&lt;int&gt;** | Disruption information identifier(s) | [optional] [default to []]
**scheduledDepartureUtc** | [**DateTime**](DateTime.md) | Scheduled (i.e. timetabled) departure time and date in ISO 8601 UTC format | [optional] [default to null]
**estimatedDepartureUtc** | [**DateTime**](DateTime.md) | Real-time estimate of departure time and date in ISO 8601 UTC format | [optional] [default to null]
**atPlatform** | **bool** | Indicates if the metropolitan train service is at the platform at the time of query; returns false for other modes | [optional] [default to null]
**platformNumber** | **String** | Platform number at stop (metropolitan train only; returns null for other modes) | [optional] [default to null]
**flags** | **String** | Flag indicating special condition for run (e.g. RR Reservations Required, GC Guaranteed Connection, DOO Drop Off Only, PUO Pick Up Only, MO Mondays only, TU Tuesdays only, WE Wednesdays only, TH Thursdays only, FR Fridays only, SS School days only; ignore E flag) | [optional] [default to null]
**departureSequence** | **int** | Chronological sequence of the departure for the run on the route. Order ascendingly by this field to get chronological order (earliest first) of departures with the same route_id and run_id. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


