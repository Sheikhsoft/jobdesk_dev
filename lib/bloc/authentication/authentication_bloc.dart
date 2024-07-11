import 'package:dev/model/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthInitialState()) {
    on<LogIn>((event, emit) async {
      try {
        // Successful login
        emit(LoggedIn(userProfile: User()));
      } catch (e) {
        // Log error also
        // Restart login transaction
        add(LogIn());
      }

      // Alternate Auth0 login method
      // try {
      //   await auth0Web.loginWithRedirect(redirectUrl: 'http://localhost:3000');
      // } catch (e) {
      //   Log error also
      //   add(LogIn());
      // }
    });

    on<LogOut>((event, emit) async {
      try {
        emit(LoggedOut());
      } catch (e) {
        // Log error
      }
    });

    on<AuthInit>((event, emit) async {
      emit(LoggedOut());
    });
  }
}
