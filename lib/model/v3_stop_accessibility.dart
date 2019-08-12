part of ptv_api_client.api;

class V3StopAccessibility {
  /* Indicates if there is lighting at the stop */
  bool lighting;
  /* Indicates the platform number for xivic information (Platform 0 indicates general stop facilities) */
  int platformNumber;
  /* Indicates if there is at least one audio customer information at the stop/platform */
  bool audioCustomerInformation;
  /* Indicates if there is at least one accessible escalator at the stop/platform that complies with the Disability Standards for Accessible Public Transport under the Disability Discrimination Act (1992) */
  bool escalator;
  /* Indicates if there is a hearing loop facility at the stop/platform */
  bool hearingLoop;
  /* Indicates if there is an elevator at the stop/platform */
  bool lift;
  /* Indicates if there are stairs available in the stop */
  bool stairs;
  /* Indicates if the stop is accessible */
  bool stopAccessible;
  /* Indicates if there are tactile tiles (also known as tactile ground surface indicators, or TGSIs) at the stop */
  bool tactileGroundSurfaceIndicator;
  /* Indicates if there is a general waiting area at the stop */
  bool waitingRoom;

  V3StopAccessibilityWheelchair wheelchair;
  V3StopAccessibility();

  @override
  String toString() {
    return 'V3StopAccessibility[lighting=$lighting, platformNumber=$platformNumber, audioCustomerInformation=$audioCustomerInformation, escalator=$escalator, hearingLoop=$hearingLoop, lift=$lift, stairs=$stairs, stopAccessible=$stopAccessible, tactileGroundSurfaceIndicator=$tactileGroundSurfaceIndicator, waitingRoom=$waitingRoom, wheelchair=$wheelchair, ]';
  }

  V3StopAccessibility.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lighting'] == null) {
      lighting = null;
    } else {
      lighting = json['lighting'];
    }
    if (json['platform_number'] == null) {
      platformNumber = null;
    } else {
      platformNumber = json['platform_number'];
    }
    if (json['audio_customer_information'] == null) {
      audioCustomerInformation = null;
    } else {
      audioCustomerInformation = json['audio_customer_information'];
    }
    if (json['escalator'] == null) {
      escalator = null;
    } else {
      escalator = json['escalator'];
    }
    if (json['hearing_loop'] == null) {
      hearingLoop = null;
    } else {
      hearingLoop = json['hearing_loop'];
    }
    if (json['lift'] == null) {
      lift = null;
    } else {
      lift = json['lift'];
    }
    if (json['stairs'] == null) {
      stairs = null;
    } else {
      stairs = json['stairs'];
    }
    if (json['stop_accessible'] == null) {
      stopAccessible = null;
    } else {
      stopAccessible = json['stop_accessible'];
    }
    if (json['tactile_ground_surface_indicator'] == null) {
      tactileGroundSurfaceIndicator = null;
    } else {
      tactileGroundSurfaceIndicator = json['tactile_ground_surface_indicator'];
    }
    if (json['waiting_room'] == null) {
      waitingRoom = null;
    } else {
      waitingRoom = json['waiting_room'];
    }
    if (json['wheelchair'] == null) {
      wheelchair = null;
    } else {
      wheelchair = V3StopAccessibilityWheelchair.fromJson(json['wheelchair']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (lighting != null) json['lighting'] = lighting;
    if (platformNumber != null) json['platform_number'] = platformNumber;
    if (audioCustomerInformation != null) {
      json['audio_customer_information'] = audioCustomerInformation;
    }
    if (escalator != null) json['escalator'] = escalator;
    if (hearingLoop != null) json['hearing_loop'] = hearingLoop;
    if (lift != null) json['lift'] = lift;
    if (stairs != null) json['stairs'] = stairs;
    if (stopAccessible != null) json['stop_accessible'] = stopAccessible;
    if (tactileGroundSurfaceIndicator != null) {
      json['tactile_ground_surface_indicator'] = tactileGroundSurfaceIndicator;
    }
    if (waitingRoom != null) json['waiting_room'] = waitingRoom;
    if (wheelchair != null) json['wheelchair'] = wheelchair;
    return json;
  }

  static List<V3StopAccessibility> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopAccessibility>()
        : json.map((value) => V3StopAccessibility.fromJson(value)).toList();
  }

  static Map<String, V3StopAccessibility> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3StopAccessibility>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopAccessibility.fromJson(value));
    }
    return map;
  }
}
