part of 'geo_info_cubit.dart';

abstract class IGeoInfoState extends Equatable {
  const IGeoInfoState();

  @override
  List<Object> get props => [];
}

class GeoInfoState extends IGeoInfoState {
  final GeoInfo geoInfo;
  final bool isLoading;
  final bool isFailed;
  final List<Map<String, dynamic>> countryList;
  final List<Map<String, dynamic>> languageList;
  final List<dynamic> typeInfoList;
  final bool isTypeInfoLoading;
  const GeoInfoState(
      {required this.geoInfo,
      this.isLoading = false,
      this.isFailed = false,
      this.isTypeInfoLoading = false,
      this.countryList = const [],
      this.languageList = const [],
      this.typeInfoList = const []});

  factory GeoInfoState.initial() {
    return GeoInfoState(geoInfo: GeoInfo());
  }

  GeoInfoState copyWith(
      {GeoInfo? geoInfo,
      bool? isLoading,
      bool? isFailed,
      bool? isTypeInfoLoading,
      List<Map<String, dynamic>>? countryList,
      List<Map<String, dynamic>>? languageList,
      List<dynamic>? typeInfoList}) {
    return GeoInfoState(
        geoInfo: geoInfo ?? this.geoInfo,
        isLoading: isLoading ?? this.isLoading,
        isTypeInfoLoading: isTypeInfoLoading ?? this.isTypeInfoLoading,
        isFailed: isFailed ?? this.isFailed,
        countryList: countryList ?? this.countryList,
        languageList: languageList ?? this.languageList,
        typeInfoList: typeInfoList ?? this.typeInfoList);
  }

  @override
  String toString() =>
      'GeoInfoState(geoInfo: $geoInfo, isLoading: $isLoading, isFailed: $isFailed, countryList: ${countryList.length}, languageList: ${languageList.length}, typeInfoList: ${typeInfoList.length}, isTypeInfoLoading : $isTypeInfoLoading  )';

  @override
  List<Object> get props => [
        geoInfo,
        isLoading,
        isFailed,
        countryList,
        languageList,
        typeInfoList,
        isTypeInfoLoading
      ];
}
