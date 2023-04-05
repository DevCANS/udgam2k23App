import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udgam2k23/general.dart';
import 'package:udgam2k23/screens/auth/screen1.dart';
import 'package:udgam2k23/screens/home/home_screen.dart';
import 'package:udgam2k23/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'methods/auth_methods.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udgam 2K23',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
      // home: const SplashScreen(),
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return const General();
          }
          return const Screen1();
        },
      ),
    );
  }
}
