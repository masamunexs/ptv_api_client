# ptv_api_client.model.V3VehiclePosition

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**latitude** | **double** | Geographic coordinate of latitude of the vehicle when known. May be null.              Only available for some bus runs. | [optional] [default to null]
**longitude** | **double** | Geographic coordinate of longitude of the vehicle when known.               Only available for some bus runs. | [optional] [default to null]
**bearing** | **double** | Compass bearing of the vehicle when known, clockwise from True North, i.e., 0 is North and 90 is East. May be null.              Only available for some bus runs. | [optional] [default to null]
**supplier** | **String** | Supplier of vehicle position data. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


