# ptv_api_client.model.V3VehicleDescriptor

## Load the model package
```dart
import 'package:ptv_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operator_** | **String** | Operator name of the vehicle such as \&quot;Metro Trains Melbourne\&quot;, \&quot;Yarra Trams\&quot;, \&quot;Ventura Bus Line\&quot;, \&quot;CDC\&quot; or \&quot;Sita Bus Lines\&quot; . May be null/empty.              Only available for train, tram, v/line and some bus runs. | [optional] [default to null]
**id** | **String** | Operator identifier of the vehicle such as \&quot;26094\&quot;. May be null/empty. Only available for some tram and bus runs. | [optional] [default to null]
**lowFloor** | **bool** | Indicator if vehicle has a low floor. May be null. Only available for some tram runs. | [optional] [default to null]
**airConditioned** | **bool** | Indicator if vehicle is air conditioned. May be null. Only available for some tram runs. | [optional] [default to null]
**description** | **String** | Vehicle description such as \&quot;6 Car Comeng\&quot;, \&quot;6 Car Xtrapolis\&quot;, \&quot;3 Car Comeng\&quot;, \&quot;6 Car Siemens\&quot;, \&quot;3 Car Siemens\&quot;. May be null/empty.              Only available for some metropolitan train runs. | [optional] [default to null]
**supplier** | **String** | Supplier of vehicle descriptor data. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


