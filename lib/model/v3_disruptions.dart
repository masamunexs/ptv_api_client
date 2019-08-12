part of ptv_api_client.api;

class V3Disruptions {
  /* Subset of disruption information applicable to multiple route_types */
  List<V3Disruption> general = [];
  /* Subset of disruption information applicable to metropolitan train */
  List<V3Disruption> metroTrain = [];
  /* Subset of disruption information applicable to metropolitan tram */
  List<V3Disruption> metroTram = [];
  /* Subset of disruption information applicable to metropolitan bus */
  List<V3Disruption> metroBus = [];
  /* Subset of disruption information applicable to V/Line train */
  List<V3Disruption> regionalTrain = [];
  /* Subset of disruption information applicable to V/Line coach */
  List<V3Disruption> regionalCoach = [];
  /* Subset of disruption information applicable to regional bus */
  List<V3Disruption> regionalBus = [];
  /* Subset of disruption information applicable to school bus */
  List<V3Disruption> schoolBus = [];
  /* Subset of disruption information applicable to telebus services */
  List<V3Disruption> telebus = [];
  /* Subset of disruption information applicable to night bus */
  List<V3Disruption> nightBus = [];
  /* Subset of disruption information applicable to ferry */
  List<V3Disruption> ferry = [];
  /* Subset of disruption information applicable to interstate train */
  List<V3Disruption> interstateTrain = [];
  /* Subset of disruption information applicable to skybus */
  List<V3Disruption> skybus = [];
  /* Subset of disruption information applicable to taxi */
  List<V3Disruption> taxi = [];
  V3Disruptions();

  @override
  String toString() {
    return 'V3Disruptions[general=$general, metroTrain=$metroTrain, metroTram=$metroTram, metroBus=$metroBus, regionalTrain=$regionalTrain, regionalCoach=$regionalCoach, regionalBus=$regionalBus, schoolBus=$schoolBus, telebus=$telebus, nightBus=$nightBus, ferry=$ferry, interstateTrain=$interstateTrain, skybus=$skybus, taxi=$taxi, ]';
  }

  V3Disruptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['general'] == null) {
      general = null;
    } else {
      general = V3Disruption.listFromJson(json['general']);
    }
    if (json['metro_train'] == null) {
      metroTrain = null;
    } else {
      metroTrain = V3Disruption.listFromJson(json['metro_train']);
    }
    if (json['metro_tram'] == null) {
      metroTram = null;
    } else {
      metroTram = V3Disruption.listFromJson(json['metro_tram']);
    }
    if (json['metro_bus'] == null) {
      metroBus = null;
    } else {
      metroBus = V3Disruption.listFromJson(json['metro_bus']);
    }
    if (json['regional_train'] == null) {
      regionalTrain = null;
    } else {
      regionalTrain = V3Disruption.listFromJson(json['regional_train']);
    }
    if (json['regional_coach'] == null) {
      regionalCoach = null;
    } else {
      regionalCoach = V3Disruption.listFromJson(json['regional_coach']);
    }
    if (json['regional_bus'] == null) {
      regionalBus = null;
    } else {
      regionalBus = V3Disruption.listFromJson(json['regional_bus']);
    }
    if (json['school_bus'] == null) {
      schoolBus = null;
    } else {
      schoolBus = V3Disruption.listFromJson(json['school_bus']);
    }
    if (json['telebus'] == null) {
      telebus = null;
    } else {
      telebus = V3Disruption.listFromJson(json['telebus']);
    }
    if (json['night_bus'] == null) {
      nightBus = null;
    } else {
      nightBus = V3Disruption.listFromJson(json['night_bus']);
    }
    if (json['ferry'] == null) {
      ferry = null;
    } else {
      ferry = V3Disruption.listFromJson(json['ferry']);
    }
    if (json['interstate_train'] == null) {
      interstateTrain = null;
    } else {
      interstateTrain = V3Disruption.listFromJson(json['interstate_train']);
    }
    if (json['skybus'] == null) {
      skybus = null;
    } else {
      skybus = V3Disruption.listFromJson(json['skybus']);
    }
    if (json['taxi'] == null) {
      taxi = null;
    } else {
      taxi = V3Disruption.listFromJson(json['taxi']);
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (general != null) json['general'] = general;
    if (metroTrain != null) json['metro_train'] = metroTrain;
    if (metroTram != null) json['metro_tram'] = metroTram;
    if (metroBus != null) json['metro_bus'] = metroBus;
    if (regionalTrain != null) json['regional_train'] = regionalTrain;
    if (regionalCoach != null) json['regional_coach'] = regionalCoach;
    if (regionalBus != null) json['regional_bus'] = regionalBus;
    if (schoolBus != null) json['school_bus'] = schoolBus;
    if (telebus != null) json['telebus'] = telebus;
    if (nightBus != null) json['night_bus'] = nightBus;
    if (ferry != null) json['ferry'] = ferry;
    if (interstateTrain != null) json['interstate_train'] = interstateTrain;
    if (skybus != null) json['skybus'] = skybus;
    if (taxi != null) json['taxi'] = taxi;
    return json;
  }

  static List<V3Disruptions> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3Disruptions>()
        : json.map((value) => V3Disruptions.fromJson(value)).toList();
  }

  static Map<String, V3Disruptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Disruptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3Disruptions.fromJson(value));
    }
    return map;
  }
}
