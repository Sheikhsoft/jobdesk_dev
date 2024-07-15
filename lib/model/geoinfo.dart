// To parse this JSON data, do
//
//     final geoInfo = geoInfoFromJson(jsonString);

import 'dart:convert';

GeoInfo geoInfoFromJson(String str) => GeoInfo.fromJson(json.decode(str));

String geoInfoToJson(GeoInfo data) => json.encode(data.toJson());

class GeoInfo {
  final IpObject? ipObject;
  final AppInfo? appInfo;

  GeoInfo({
    this.ipObject,
    this.appInfo,
  });

  factory GeoInfo.fromJson(Map<String, dynamic> json) => GeoInfo(
        ipObject: json["IpObject"] == null ? null : IpObject.fromJson(json["IpObject"]),
        appInfo: json["AppInfo"] == null ? null : AppInfo.fromJson(json["AppInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "IpObject": ipObject?.toJson(),
        "AppInfo": appInfo?.toJson(),
      };
}

class AppInfo {
  final String? appDomain;
  final String? address;
  final String? openingHours;
  final String? name;
  final String? phone;
  final String? clientCountryCode;
  final String? langCode;
  final String? langCodeRaw;
  final String? clientCountryName;
  final String? clientIp;
  final String? copyrightLine;

  AppInfo({
    this.appDomain,
    this.address,
    this.openingHours,
    this.name,
    this.phone,
    this.clientCountryCode,
    this.langCode,
    this.langCodeRaw,
    this.clientCountryName,
    this.clientIp,
    this.copyrightLine,
  });

  factory AppInfo.fromJson(Map<String, dynamic> json) => AppInfo(
        appDomain: json["AppDomain"],
        address: json["Address"],
        openingHours: json["OpeningHours"],
        name: json["Name"],
        phone: json["Phone"],
        clientCountryCode: json["ClientCountryCode"],
        langCode: json["LangCode"],
        langCodeRaw: json["LangCodeRaw"],
        clientCountryName: json["ClientCountryName"],
        clientIp: json["ClientIP"],
        copyrightLine: json["CopyrightLine"],
      );

  Map<String, dynamic> toJson() => {
        "AppDomain": appDomain,
        "Address": address,
        "OpeningHours": openingHours,
        "Name": name,
        "Phone": phone,
        "ClientCountryCode": clientCountryCode,
        "LangCode": langCode,
        "LangCodeRaw": langCodeRaw,
        "ClientCountryName": clientCountryName,
        "ClientIP": clientIp,
        "CopyrightLine": copyrightLine,
      };
}

class IpObject {
  final String? ipObjectAs;
  final String? asname;
  final String? city;
  final String? continent;
  final String? continentCode;
  final String? country;
  final String? countryCode;
  final String? langCode;
  final String? currency;
  final String? district;
  final bool? hosting;
  final String? isp;
  final double? lat;
  final double? lon;
  final bool? mobile;
  final int? offset;
  final String? org;
  final bool? proxy;
  final String? query;
  final String? region;
  final String? regionName;
  final String? reverse;
  final String? status;
  final String? timezone;
  final String? zip;

  IpObject({
    this.ipObjectAs,
    this.asname,
    this.city,
    this.continent,
    this.continentCode,
    this.country,
    this.countryCode,
    this.langCode,
    this.currency,
    this.district,
    this.hosting,
    this.isp,
    this.lat,
    this.lon,
    this.mobile,
    this.offset,
    this.org,
    this.proxy,
    this.query,
    this.region,
    this.regionName,
    this.reverse,
    this.status,
    this.timezone,
    this.zip,
  });

  factory IpObject.fromJson(Map<String, dynamic> json) => IpObject(
        ipObjectAs: json["as"],
        asname: json["asname"],
        city: json["city"],
        continent: json["continent"],
        continentCode: json["continentCode"],
        country: json["country"],
        countryCode: json["countryCode"],
        langCode: json["langCode"],
        currency: json["currency"],
        district: json["district"],
        hosting: json["hosting"],
        isp: json["isp"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        mobile: json["mobile"],
        offset: json["offset"],
        org: json["org"],
        proxy: json["proxy"],
        query: json["query"],
        region: json["region"],
        regionName: json["regionName"],
        reverse: json["reverse"],
        status: json["status"],
        timezone: json["timezone"],
        zip: json["zip"],
      );

  Map<String, dynamic> toJson() => {
        "as": ipObjectAs,
        "asname": asname,
        "city": city,
        "continent": continent,
        "continentCode": continentCode,
        "country": country,
        "countryCode": countryCode,
        "langCode": langCode,
        "currency": currency,
        "district": district,
        "hosting": hosting,
        "isp": isp,
        "lat": lat,
        "lon": lon,
        "mobile": mobile,
        "offset": offset,
        "org": org,
        "proxy": proxy,
        "query": query,
        "region": region,
        "regionName": regionName,
        "reverse": reverse,
        "status": status,
        "timezone": timezone,
        "zip": zip,
      };
}
