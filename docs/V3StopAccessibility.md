# ptv_api_client.model.V3StopAccessibility

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lighting** | **bool** | Indicates if there is lighting at the stop | [optional] [default to null]
**platformNumber** | **int** | Indicates the platform number for xivic information (Platform 0 indicates general stop facilities) | [optional] [default to null]
**audioCustomerInformation** | **bool** | Indicates if there is at least one audio customer information at the stop/platform | [optional] [default to null]
**escalator** | **bool** | Indicates if there is at least one accessible escalator at the stop/platform that complies with the Disability Standards for Accessible Public Transport under the Disability Discrimination Act (1992) | [optional] [default to null]
**hearingLoop** | **bool** | Indicates if there is a hearing loop facility at the stop/platform | [optional] [default to null]
**lift** | **bool** | Indicates if there is an elevator at the stop/platform | [optional] [default to null]
**stairs** | **bool** | Indicates if there are stairs available in the stop | [optional] [default to null]
**stopAccessible** | **bool** | Indicates if the stop is accessible | [optional] [default to null]
**tactileGroundSurfaceIndicator** | **bool** | Indicates if there are tactile tiles (also known as tactile ground surface indicators, or TGSIs) at the stop | [optional] [default to null]
**waitingRoom** | **bool** | Indicates if there is a general waiting area at the stop | [optional] [default to null]
**wheelchair** | [**V3StopAccessibilityWheelchair**](V3StopAccessibilityWheelchair.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


