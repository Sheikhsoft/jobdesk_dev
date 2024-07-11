import 'package:dev/api/api.dart';
import 'package:dev/core/network/connection_checker.dart';

class AuthRepository {
  final Api api;
  final ConnectionChecker connectionChecker;
  AuthRepository({
    required this.api,
    required this.connectionChecker,
  });
}
