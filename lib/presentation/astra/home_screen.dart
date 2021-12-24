import 'package:astra_admin_app/presentation/core/routes/app_router.gr.dart';
import 'package:astra_admin_app/presentation/core/widgets/scaffolds/navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart' hide NavigationBar;

/// Defines home screen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        ClientRegistrationRouter(),
        FavoritesRouter(),
        MessageRouter(),
        SettingsRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: [
            NavigationBarItem(
              icon: CupertinoIcons.person_add_solid,
            ),
            NavigationBarItem(
              icon: CupertinoIcons.person_2_fill,
            ),
            NavigationBarItem(
              icon: CupertinoIcons.envelope,
            ),
            NavigationBarItem(
              icon: CupertinoIcons.settings,
            )
          ],
        );
      },
    );
  }
}
