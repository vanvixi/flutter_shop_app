import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../l10n/l10n_manager.dart';
import '../../route/router.dart';

class RootBottomNavigatePage extends HookConsumerWidget {
  const RootBottomNavigatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        BrandRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: tabsRouter.setActiveIndex,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                size: 23.0,
              ),
              label: useL10n().home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shop),
              label: useL10n().brand,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              label: useL10n().brand,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: useL10n().brand,
            ),
          ],
        );
      },
    );
  }
}