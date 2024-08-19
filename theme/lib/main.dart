import 'package:flutter/material.dart';
import 'package:theme/second.dart';
import 'package:theme/shared.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.cachIntialization();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: second(),
    );
  }
}
