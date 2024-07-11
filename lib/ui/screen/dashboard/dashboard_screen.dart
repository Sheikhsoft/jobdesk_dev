import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Screen"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("Logout"),
          onPressed: () {
            context.read<AuthenticationBloc>().add(LogOut());
          },
        ),
      ),
    );
  }
}
