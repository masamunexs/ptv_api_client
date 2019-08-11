part of ptv_api_client.api;

class V3Outlet {
  /* The SLID / SPID */
  String outletSlidSpid = null;
  /* The location name of the outlet */
  String outletName = null;
  /* The business name of the outlet */
  String outletBusiness = null;
  /* Geographic coordinate of latitude at outlet */
  double outletLatitude = null;
  /* Geographic coordinate of longitude at outlet */
  double outletLongitude = null;
  /* The city/municipality the outlet is in */
  String outletSuburb = null;
  /* The postcode for the outlet */
  int outletPostcode = null;
  /* The business hours on Monday */
  String outletBusinessHourMon = null;
  /* The business hours on Tuesday */
  String outletBusinessHourTue = null;
  /* The business hours on Wednesday */
  String outletBusinessHourWed = null;
  /* The business hours on Thursday */
  String outletBusinessHourThur = null;
  /* The business hours on Friday */
  String outletBusinessHourFri = null;
  /* The business hours on Saturday */
  String outletBusinessHourSat = null;
  /* The business hours on Sunday */
  String outletBusinessHourSun = null;
  /* Any additional notes for the outlet such as 'Buy pre-loaded myki cards only'. May be null/empty. */
  String outletNotes = null;
  V3Outlet();

  @override
  String toString() {
    return 'V3Outlet[outletSlidSpid=$outletSlidSpid, outletName=$outletName, outletBusiness=$outletBusiness, outletLatitude=$outletLatitude, outletLongitude=$outletLongitude, outletSuburb=$outletSuburb, outletPostcode=$outletPostcode, outletBusinessHourMon=$outletBusinessHourMon, outletBusinessHourTue=$outletBusinessHourTue, outletBusinessHourWed=$outletBusinessHourWed, outletBusinessHourThur=$outletBusinessHourThur, outletBusinessHourFri=$outletBusinessHourFri, outletBusinessHourSat=$outletBusinessHourSat, outletBusinessHourSun=$outletBusinessHourSun, outletNotes=$outletNotes, ]';
  }

  V3Outlet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['outlet_slid_spid'] == null) {
      outletSlidSpid = null;
    } else {
          outletSlidSpid = json['outlet_slid_spid'];
    }
    if (json['outlet_name'] == null) {
      outletName = null;
    } else {
          outletName = json['outlet_name'];
    }
    if (json['outlet_business'] == null) {
      outletBusiness = null;
    } else {
          outletBusiness = json['outlet_business'];
    }
    if (json['outlet_latitude'] == null) {
      outletLatitude = null;
    } else {
          outletLatitude = json['outlet_latitude'];
    }
    if (json['outlet_longitude'] == null) {
      outletLongitude = null;
    } else {
          outletLongitude = json['outlet_longitude'];
    }
    if (json['outlet_suburb'] == null) {
      outletSuburb = null;
    } else {
          outletSuburb = json['outlet_suburb'];
    }
    if (json['outlet_postcode'] == null) {
      outletPostcode = null;
    } else {
          outletPostcode = json['outlet_postcode'];
    }
    if (json['outlet_business_hour_mon'] == null) {
      outletBusinessHourMon = null;
    } else {
          outletBusinessHourMon = json['outlet_business_hour_mon'];
    }
    if (json['outlet_business_hour_tue'] == null) {
      outletBusinessHourTue = null;
    } else {
          outletBusinessHourTue = json['outlet_business_hour_tue'];
    }
    if (json['outlet_business_hour_wed'] == null) {
      outletBusinessHourWed = null;
    } else {
          outletBusinessHourWed = json['outlet_business_hour_wed'];
    }
    if (json['outlet_business_hour_thur'] == null) {
      outletBusinessHourThur = null;
    } else {
          outletBusinessHourThur = json['outlet_business_hour_thur'];
    }
    if (json['outlet_business_hour_fri'] == null) {
      outletBusinessHourFri = null;
    } else {
          outletBusinessHourFri = json['outlet_business_hour_fri'];
    }
    if (json['outlet_business_hour_sat'] == null) {
      outletBusinessHourSat = null;
    } else {
          outletBusinessHourSat = json['outlet_business_hour_sat'];
    }
    if (json['outlet_business_hour_sun'] == null) {
      outletBusinessHourSun = null;
    } else {
          outletBusinessHourSun = json['outlet_business_hour_sun'];
    }
    if (json['outlet_notes'] == null) {
      outletNotes = null;
    } else {
          outletNotes = json['outlet_notes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (outletSlidSpid != null)
      json['outlet_slid_spid'] = outletSlidSpid;
    if (outletName != null)
      json['outlet_name'] = outletName;
    if (outletBusiness != null)
      json['outlet_business'] = outletBusiness;
    if (outletLatitude != null)
      json['outlet_latitude'] = outletLatitude;
    if (outletLongitude != null)
      json['outlet_longitude'] = outletLongitude;
    if (outletSuburb != null)
      json['outlet_suburb'] = outletSuburb;
    if (outletPostcode != null)
      json['outlet_postcode'] = outletPostcode;
    if (outletBusinessHourMon != null)
      json['outlet_business_hour_mon'] = outletBusinessHourMon;
    if (outletBusinessHourTue != null)
      json['outlet_business_hour_tue'] = outletBusinessHourTue;
    if (outletBusinessHourWed != null)
      json['outlet_business_hour_wed'] = outletBusinessHourWed;
    if (outletBusinessHourThur != null)
      json['outlet_business_hour_thur'] = outletBusinessHourThur;
    if (outletBusinessHourFri != null)
      json['outlet_business_hour_fri'] = outletBusinessHourFri;
    if (outletBusinessHourSat != null)
      json['outlet_business_hour_sat'] = outletBusinessHourSat;
    if (outletBusinessHourSun != null)
      json['outlet_business_hour_sun'] = outletBusinessHourSun;
    if (outletNotes != null)
      json['outlet_notes'] = outletNotes;
    return json;
  }

  static List<V3Outlet> listFromJson(List<dynamic> json) {
    return json == null ? List<V3Outlet>() : json.map((value) => V3Outlet.fromJson(value)).toList();
  }

  static Map<String, V3Outlet> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V3Outlet>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V3Outlet.fromJson(value));
    }
    return map;
  }
}

