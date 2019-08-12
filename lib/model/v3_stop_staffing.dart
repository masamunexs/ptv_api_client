part of ptv_api_client.api;

class V3StopStaffing {
  /* Stop staffing hours */
  String friAmFrom;
  /* Stop staffing hours */
  String friAmTo;
  /* Stop staffing hours */
  String friPmFrom;
  /* Stop staffing hours */
  String friPmTo;
  /* Stop staffing hours */
  String monAmFrom;
  /* Stop staffing hours */
  String monAmTo;
  /* Stop staffing hours */
  String monPmFrom;
  /* Stop staffing hours */
  String monPmTo;
  /* Stop staffing hours */
  String phAdditionalText;
  /* Stop staffing hours */
  String phFrom;
  /* Stop staffing hours */
  String phTo;
  /* Stop staffing hours */
  String satAmFrom;
  /* Stop staffing hours */
  String satAmTo;
  /* Stop staffing hours */
  String satPmFrom;
  /* Stop staffing hours */
  String satPmTo;
  /* Stop staffing hours */
  String sunAmFrom;
  /* Stop staffing hours */
  String sunAmTo;
  /* Stop staffing hours */
  String sunPmFrom;
  /* Stop staffing hours */
  String sunPmTo;
  /* Stop staffing hours */
  String thuAmFrom;
  /* Stop staffing hours */
  String thuAmTo;
  /* Stop staffing hours */
  String thuPmFrom;
  /* Stop staffing hours */
  String thuPmTo;
  /* Stop staffing hours */
  String tueAmFrom;
  /* Stop staffing hours */
  String tueAmTo;
  /* Stop staffing hours */
  String tuePmFrom;
  /* Stop staffing hours */
  String tuePmTo;
  /* Stop staffing hours */
  String wedAmFrom;
  /* Stop staffing hours */
  String wedAmTo;
  /* Stop staffing hours */
  String wedPmFrom;
  /* Stop staffing hours */
  String wedPmTo;
  V3StopStaffing();

  @override
  String toString() {
    return 'V3StopStaffing[friAmFrom=$friAmFrom, friAmTo=$friAmTo, friPmFrom=$friPmFrom, friPmTo=$friPmTo, monAmFrom=$monAmFrom, monAmTo=$monAmTo, monPmFrom=$monPmFrom, monPmTo=$monPmTo, phAdditionalText=$phAdditionalText, phFrom=$phFrom, phTo=$phTo, satAmFrom=$satAmFrom, satAmTo=$satAmTo, satPmFrom=$satPmFrom, satPmTo=$satPmTo, sunAmFrom=$sunAmFrom, sunAmTo=$sunAmTo, sunPmFrom=$sunPmFrom, sunPmTo=$sunPmTo, thuAmFrom=$thuAmFrom, thuAmTo=$thuAmTo, thuPmFrom=$thuPmFrom, thuPmTo=$thuPmTo, tueAmFrom=$tueAmFrom, tueAmTo=$tueAmTo, tuePmFrom=$tuePmFrom, tuePmTo=$tuePmTo, wedAmFrom=$wedAmFrom, wedAmTo=$wedAmTo, wedPmFrom=$wedPmFrom, wedPmTo=$wedPmTo, ]';
  }

  V3StopStaffing.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fri_am_from'] == null) {
      friAmFrom = null;
    } else {
      friAmFrom = json['fri_am_from'];
    }
    if (json['fri_am_to'] == null) {
      friAmTo = null;
    } else {
      friAmTo = json['fri_am_to'];
    }
    if (json['fri_pm_from'] == null) {
      friPmFrom = null;
    } else {
      friPmFrom = json['fri_pm_from'];
    }
    if (json['fri_pm_to'] == null) {
      friPmTo = null;
    } else {
      friPmTo = json['fri_pm_to'];
    }
    if (json['mon_am_from'] == null) {
      monAmFrom = null;
    } else {
      monAmFrom = json['mon_am_from'];
    }
    if (json['mon_am_to'] == null) {
      monAmTo = null;
    } else {
      monAmTo = json['mon_am_to'];
    }
    if (json['mon_pm_from'] == null) {
      monPmFrom = null;
    } else {
      monPmFrom = json['mon_pm_from'];
    }
    if (json['mon_pm_to'] == null) {
      monPmTo = null;
    } else {
      monPmTo = json['mon_pm_to'];
    }
    if (json['ph_additional_text'] == null) {
      phAdditionalText = null;
    } else {
      phAdditionalText = json['ph_additional_text'];
    }
    if (json['ph_from'] == null) {
      phFrom = null;
    } else {
      phFrom = json['ph_from'];
    }
    if (json['ph_to'] == null) {
      phTo = null;
    } else {
      phTo = json['ph_to'];
    }
    if (json['sat_am_from'] == null) {
      satAmFrom = null;
    } else {
      satAmFrom = json['sat_am_from'];
    }
    if (json['sat_am_to'] == null) {
      satAmTo = null;
    } else {
      satAmTo = json['sat_am_to'];
    }
    if (json['sat_pm_from'] == null) {
      satPmFrom = null;
    } else {
      satPmFrom = json['sat_pm_from'];
    }
    if (json['sat_pm_to'] == null) {
      satPmTo = null;
    } else {
      satPmTo = json['sat_pm_to'];
    }
    if (json['sun_am_from'] == null) {
      sunAmFrom = null;
    } else {
      sunAmFrom = json['sun_am_from'];
    }
    if (json['sun_am_to'] == null) {
      sunAmTo = null;
    } else {
      sunAmTo = json['sun_am_to'];
    }
    if (json['sun_pm_from'] == null) {
      sunPmFrom = null;
    } else {
      sunPmFrom = json['sun_pm_from'];
    }
    if (json['sun_pm_to'] == null) {
      sunPmTo = null;
    } else {
      sunPmTo = json['sun_pm_to'];
    }
    if (json['thu_am_from'] == null) {
      thuAmFrom = null;
    } else {
      thuAmFrom = json['thu_am_from'];
    }
    if (json['thu_am_to'] == null) {
      thuAmTo = null;
    } else {
      thuAmTo = json['thu_am_to'];
    }
    if (json['thu_pm_from'] == null) {
      thuPmFrom = null;
    } else {
      thuPmFrom = json['thu_pm_from'];
    }
    if (json['thu_pm_to'] == null) {
      thuPmTo = null;
    } else {
      thuPmTo = json['thu_pm_to'];
    }
    if (json['tue_am_from'] == null) {
      tueAmFrom = null;
    } else {
      tueAmFrom = json['tue_am_from'];
    }
    if (json['tue_am_to'] == null) {
      tueAmTo = null;
    } else {
      tueAmTo = json['tue_am_to'];
    }
    if (json['tue_pm_from'] == null) {
      tuePmFrom = null;
    } else {
      tuePmFrom = json['tue_pm_from'];
    }
    if (json['tue_pm_to'] == null) {
      tuePmTo = null;
    } else {
      tuePmTo = json['tue_pm_to'];
    }
    if (json['wed_am_from'] == null) {
      wedAmFrom = null;
    } else {
      wedAmFrom = json['wed_am_from'];
    }
    if (json['wed_am_to'] == null) {
      wedAmTo = null;
    } else {
      wedAmTo = json['wed_am_to'];
    }
    if (json['wed_pm_from'] == null) {
      wedPmFrom = null;
    } else {
      wedPmFrom = json['wed_pm_from'];
    }
    if (json['wed_pm_To'] == null) {
      wedPmTo = null;
    } else {
      wedPmTo = json['wed_pm_To'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (friAmFrom != null) json['fri_am_from'] = friAmFrom;
    if (friAmTo != null) json['fri_am_to'] = friAmTo;
    if (friPmFrom != null) json['fri_pm_from'] = friPmFrom;
    if (friPmTo != null) json['fri_pm_to'] = friPmTo;
    if (monAmFrom != null) json['mon_am_from'] = monAmFrom;
    if (monAmTo != null) json['mon_am_to'] = monAmTo;
    if (monPmFrom != null) json['mon_pm_from'] = monPmFrom;
    if (monPmTo != null) json['mon_pm_to'] = monPmTo;
    if (phAdditionalText != null) json['ph_additional_text'] = phAdditionalText;
    if (phFrom != null) json['ph_from'] = phFrom;
    if (phTo != null) json['ph_to'] = phTo;
    if (satAmFrom != null) json['sat_am_from'] = satAmFrom;
    if (satAmTo != null) json['sat_am_to'] = satAmTo;
    if (satPmFrom != null) json['sat_pm_from'] = satPmFrom;
    if (satPmTo != null) json['sat_pm_to'] = satPmTo;
    if (sunAmFrom != null) json['sun_am_from'] = sunAmFrom;
    if (sunAmTo != null) json['sun_am_to'] = sunAmTo;
    if (sunPmFrom != null) json['sun_pm_from'] = sunPmFrom;
    if (sunPmTo != null) json['sun_pm_to'] = sunPmTo;
    if (thuAmFrom != null) json['thu_am_from'] = thuAmFrom;
    if (thuAmTo != null) json['thu_am_to'] = thuAmTo;
    if (thuPmFrom != null) json['thu_pm_from'] = thuPmFrom;
    if (thuPmTo != null) json['thu_pm_to'] = thuPmTo;
    if (tueAmFrom != null) json['tue_am_from'] = tueAmFrom;
    if (tueAmTo != null) json['tue_am_to'] = tueAmTo;
    if (tuePmFrom != null) json['tue_pm_from'] = tuePmFrom;
    if (tuePmTo != null) json['tue_pm_to'] = tuePmTo;
    if (wedAmFrom != null) json['wed_am_from'] = wedAmFrom;
    if (wedAmTo != null) json['wed_am_to'] = wedAmTo;
    if (wedPmFrom != null) json['wed_pm_from'] = wedPmFrom;
    if (wedPmTo != null) json['wed_pm_To'] = wedPmTo;
    return json;
  }

  static List<V3StopStaffing> listFromJson(List<dynamic> json) {
    return json == null
        ? List<V3StopStaffing>()
        : json.map((value) => V3StopStaffing.fromJson(value)).toList();
  }

  static Map<String, V3StopStaffing> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3StopStaffing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = V3StopStaffing.fromJson(value));
    }
    return map;
  }
}
