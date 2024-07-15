import 'package:dev/bloc/geo_info/cubit/geo_info_cubit.dart';
import 'package:dev/core/constant/app_const.dart';
import 'package:dev/init_dependencies.dart';
import 'package:dev/repository/setting_repository.dart';
import 'package:dev/service/storage_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final GeoInfoCubit geoBloc;
  final SettingRepository settingRepository;
  LanguageBloc({
    required this.geoBloc,
    required this.settingRepository,
  }) : super(LanguageState.initial()) {
    on<LoadLanguage>((event, emit) => onLangChange(event, emit));
  }

  LanguageState get initialState => LanguageState.initial();

  // @override
  // Stream<LanguageState> mapEventToState(LanguageEvent event) async* {
  //   if (event is LoadLanguage) {
  //     yield LanguageState(event.locale);
  //   }
  // }

  Future<void> onLangChange(
      LanguageEvent event, Emitter<LanguageState> emit) async {
    if (event is LoadLanguage) {
      await settingRepository.getTypeList(
          languageCode: event.locale.languageCode, isLangChange: null);
      String preTypeDataLang = await serviceLocator<LocalStorageService>()
          .getString(AppConst.typeInfoLang);

      geoBloc.getTypeInfoData(
          lang: event.locale.languageCode,
          isLangChange:
              preTypeDataLang != event.locale.languageCode ? true : false);

      emit(LanguageState(event.locale));
    }
  }
}
