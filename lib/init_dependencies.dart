
import 'package:dev/api/api.dart';
import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/bloc/geo_info/cubit/geo_info_cubit.dart';
import 'package:dev/bloc/language/language_bloc.dart';
import 'package:dev/core/network/connection_checker.dart';
import 'package:dev/repository/auth_repository.dart';
import 'package:dev/repository/setting_repository.dart';
import 'package:dev/service/storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:path_provider/path_provider.dart';

part 'init_dependencies.main.dart';
