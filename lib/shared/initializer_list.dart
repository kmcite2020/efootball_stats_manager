import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../assets/licenses.dart';
import '../hive_storage.dart';

late SharedPreferences preferences;

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  addLicenses();
  // GoogleFonts.config.allowRuntimeFetching = false;
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  preferences = await SharedPreferences.getInstance();
}
