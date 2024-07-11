import 'package:dev/bloc/authentication/authentication_bloc.dart';
import 'package:dev/core/constant/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Landing Screen"),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < AppConst.mobileMaxWidth) {
              return Scaffold();
            } else if (constraints.maxWidth < AppConst.desktopMaxWidth) {
            } else {}
          },
        ));
  }
}
