import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/bloc/geo_info/cubit/geo_info_cubit.dart';
import 'package:dev/bloc/language/language_bloc.dart';
import 'package:dev/init_dependencies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

abstract class BlocInitialize {
  static List<SingleChildWidget> providers = [
    BlocProvider(
      create: (_) => serviceLocator<GeoInfoCubit>()..getGeoInfo(),
    ),
    BlocProvider(
      create: (_) => serviceLocator<AuthenticationBloc>(),
    ),
    BlocProvider(
      create: (_) => serviceLocator<LanguageBloc>(),
    ),
  ];
}
