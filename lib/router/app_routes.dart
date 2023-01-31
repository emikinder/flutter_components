import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', name: 'Home Screen' screen: const HomeScreen(), icon: Icons.list_alt),
    MenuOption(route: 'listview1', name: 'ListView 1', screen: const ListView1Screen(), icon: Icons.abc),
    MenuOption(route: 'listview2', name: 'ListView 2', screen: const ListView2Screen(), icon: Icons.do_disturb),
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.cached_rounded),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.person),
    MenuOption(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.moving_rounded),
    MenuOption(route: 'inputs', name: 'Text inputs', screen: const InputsScreen(), icon: Icons.account_tree_rounded),
    MenuOption(route: 'slider', name: 'Sliders', screen: const SliderScreen(), icon: Icons.slow_motion_video_sharp),
    MenuOption(route: 'listviewrouter', name: 'ListView Builder', screen: const ListViewBuilderScreen(), icon: Icons.list_alt),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
