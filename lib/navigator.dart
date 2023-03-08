import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/home/views/view.dart';

final navigator = RM.injectNavigator(
  routes: {
    '/': (_) => const MyHomePage(),
  },
);
