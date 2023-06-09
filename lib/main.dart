import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_list/screens/splashscreen.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    ),
  );
}