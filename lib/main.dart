import 'package:api_demo/services/perference_services.dart';
import 'package:flutter/material.dart';

import 'home/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PerfServices.init();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
