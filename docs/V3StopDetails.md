# ptv_api_client.model.V3StopDetails

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disruptionIds** | **List&lt;int&gt;** | Disruption information identifier(s) | [optional] [default to []]
**stationType** | **String** | Type of metropolitan train station (i.e. \&quot;Premium\&quot;, \&quot;Host\&quot; or \&quot;Unstaffed\&quot; station); returns null for V/Line train | [optional] [default to null]
**stationDescription** | **String** | The definition applicable to the station_type; returns null for V/Line train | [optional] [default to null]
**routeType** | **int** | Transport mode identifier | [optional] [default to null]
**stopLocation** | [**V3StopLocation**](V3StopLocation.md) |  | [optional] [default to null]
**stopAmenities** | [**V3StopAmenityDetails**](V3StopAmenityDetails.md) |  | [optional] [default to null]
**stopAccessibility** | [**V3StopAccessibility**](V3StopAccessibility.md) |  | [optional] [default to null]
**stopStaffing** | [**V3StopStaffing**](V3StopStaffing.md) |  | [optional] [default to null]
**stopId** | **int** | Stop identifier | [optional] [default to null]
**stopName** | **String** | Name of stop | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


