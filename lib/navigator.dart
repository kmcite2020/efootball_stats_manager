import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/home/views/home_view.dart';

final navigator = RM.injectNavigator(
  routes: {
    '/': (_) => const HomeView(),
  },
);
