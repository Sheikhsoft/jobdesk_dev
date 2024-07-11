import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/init_dependencies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

abstract class BlocInitialize {
  static List<SingleChildWidget> providers = [
    BlocProvider(
      create: (_) => serviceLocator<AuthenticationBloc>(),
    ),
  ];
}
