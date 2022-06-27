import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/presentation/theme/theme.dart';

import 'intro_view_model.dart';
import 'stless/control_area.dart';

class IntroPage extends HookConsumerWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readCtrl = ref.read(introVMProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: <Widget>[
          NotificationListener<ScrollNotification>(
            child: PageView(
              children: readCtrl.pageSliders,
              controller: readCtrl.pageController,
              physics: const BouncingScrollPhysics(),
            ),
            onNotification: readCtrl.onNotifyScroll,
          ),
          const Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 10,
            child: ControlArea(),
          ),
        ],
      ),
    );
  }
}