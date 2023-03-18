import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udgam2k23/screens/home/home_screen.dart';
import 'package:udgam2k23/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //

        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
      home: const SplashScreen(),
    );
  }
}
