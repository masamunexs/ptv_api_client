part of ptv_api_client.api;

class V3StopAmenityDetails {
  /* Indicates if there is a public toilet at or near the stop */
  bool toilet = null;
  /* Indicates if there is a taxi rank at or near the stop */
  bool taxiRank = null;
  /* The number of free car parking spots at the stop */
  String carParking = null;
  /* Indicates if there are CCTV (i.e. closed circuit television) cameras at the stop */
  bool cctv = null;
  V3StopAmenityDetails();

  @override
  String toString() {
    return 'V3StopAmenityDetails[toilet=$toilet, taxiRank=$taxiRank, carParking=$carParking, cctv=$cctv, ]';
  }

  V3StopAmenityDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['toilet'] == null) {
      toilet = null;
    } else {
          toilet = json['toilet'];
    }
    if (json['taxi_rank'] == null) {
      taxiRank = null;
    } else {
          taxiRank = json['taxi_rank'];
    }
    if (json['car_parking'] == null) {
      carParking = null;
    } else {
          carParking = json['car_parking'];
    }
    if (json['cctv'] == null) {
      cctv = null;
    } else {
          cctv = json['cctv'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (toilet != null)
      json['toilet'] = toilet;
    if (taxiRank != null)
      json['taxi_rank'] = taxiRank;
    if (carParking != null)
      json['car_parking'] = carParking;
    if (cctv != null)
      json['cctv'] = cctv;
    return json;
  }

  static List<V3StopAmenityDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<V3StopAmenityDetails>() : json.map((value) => V3StopAmenityDetails.fromJson(value)).toList();
  }

  static Map<String, V3StopAmenityDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopAmenityDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3StopAmenityDetails.fromJson(value));
    }
    return map;
  }
}

