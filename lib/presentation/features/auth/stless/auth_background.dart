import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/const/constants.dart';
import '../../../widgets/widgets.dart';

class AuthBackgroundPage extends HookWidget {
  const AuthBackgroundPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.loginScreenBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.0),
                  Color.fromRGBO(0, 0, 0, 0.5)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultExThinPadding,
                ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
