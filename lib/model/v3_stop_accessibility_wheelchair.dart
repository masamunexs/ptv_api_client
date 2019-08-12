part of ptv_api_client.api;

class V3StopAccessibilityWheelchair {
  bool accessibleRamp;
  /* Indicates if there is at least one accessible parking spot at the stop that complies with the Disability Standards for Accessible Public Transport under the Disability Discrimination Act (1992) */
  bool parking;
  /* Indicates if there is at least one accessible telephone at the stop/platform that complies with the Disability Standards for Accessible Public Transport under the Disability Discrimination Act (1992) */
  bool telephone;
  /* Indicates if there is at least one accessible toilet at the stop/platform that complies with the Disability Standards for Accessible Public Transport under the Disability Discrimination Act (1992) */
  bool toilet;
  /* Indicates if there is at least one low ticket counter at the stop that complies with the Disability Standards for Accessible Public Transport under the Disability Discrimination Act (1992) */
  bool lowTicketCounter;
  /* Indicates if there is a space for mobility device to board on or off a transport mode */
  bool manouvering;
  /* Indicates if there is a raised platform to board a train */
  bool raisedPlatform;
  /* Indicates if there are ramps (&lt;1:14) at the stop/platform */
  bool ramp;
  /* Indicates if there is a path beyond the stop which is accessible */
  bool secondaryPath;
  /* Indicates if there is shelter near the raised platform */
  bool raisedPlatformShelther;
  /* Indicates if there are ramps (&gt;1:14) at the stop/platform */
  bool steepRamp;
  V3StopAccessibilityWheelchair();

  @override
  String toString() {
    return 'V3StopAccessibilityWheelchair[accessibleRamp=$accessibleRamp, parking=$parking, telephone=$telephone, toilet=$toilet, lowTicketCounter=$lowTicketCounter, manouvering=$manouvering, raisedPlatform=$raisedPlatform, ramp=$ramp, secondaryPath=$secondaryPath, raisedPlatformShelther=$raisedPlatformShelther, steepRamp=$steepRamp, ]';
  }

  V3StopAccessibilityWheelchair.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessible_ramp'] == null) {
      accessibleRamp = null;
    } else {
      accessibleRamp = json['accessible_ramp'];
    }
    if (json['parking'] == null) {
      parking = null;
    } else {
      parking = json['parking'];
    }
    if (json['telephone'] == null) {
      telephone = null;
    } else {
      telephone = json['telephone'];
    }
    if (json['toilet'] == null) {
      toilet = null;
    } else {
      toilet = json['toilet'];
    }
    if (json['low_ticket_counter'] == null) {
      lowTicketCounter = null;
    } else {
      lowTicketCounter = json['low_ticket_counter'];
    }
    if (json['manouvering'] == null) {
      manouvering = null;
    } else {
      manouvering = json['manouvering'];
    }
    if (json['raised_platform'] == null) {
      raisedPlatform = null;
    } else {
      raisedPlatform = json['raised_platform'];
    }
    if (json['ramp'] == null) {
      ramp = null;
    } else {
      ramp = json['ramp'];
    }
    if (json['secondary_path'] == null) {
      secondaryPath = null;
    } else {
      secondaryPath = json['secondary_path'];
    }
    if (json['raised_platform_shelther'] == null) {
      raisedPlatformShelther = null;
    } else {
      raisedPlatformShelther = json['raised_platform_shelther'];
    }
    if (json['steep_ramp'] == null) {
      steepRamp = null;
    } else {
      steepRamp = json['steep_ramp'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (accessibleRamp != null) json['accessible_ramp'] = accessibleRamp;
    if (parking != null) json['parking'] = parking;
    if (telephone != null) json['telephone'] = telephone;
    if (toilet != null) json['toilet'] = toilet;
    if (lowTicketCounter != null) json['low_ticket_counter'] = lowTicketCounter;
    if (manouvering != null) json['manouvering'] = manouvering;
    if (raisedPlatform != null) json['raised_platform'] = raisedPlatform;
    if (ramp != null) json['ramp'] = ramp;
    if (secondaryPath != null) json['secondary_path'] = secondaryPath;
    if (raisedPlatformShelther != null) {
      json['raised_platform_shelther'] = raisedPlatformShelther;
    }
    if (steepRamp != null) json['steep_ramp'] = steepRamp;
    return json;
  }

  static List<V3StopAccessibilityWheelchair> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopAccessibilityWheelchair>()
        : json
            .map((value) => V3StopAccessibilityWheelchair.fromJson(value))
            .toList();
  }

  static Map<String, V3StopAccessibilityWheelchair> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, V3StopAccessibilityWheelchair>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopAccessibilityWheelchair.fromJson(value));
    }
    return map;
  }
}
