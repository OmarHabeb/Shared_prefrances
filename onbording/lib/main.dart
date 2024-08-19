import 'package:flutter/material.dart';
import 'package:onbording/check.dart';
import 'package:onbording/shared.dart';

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

      home: checking(),
    );
  }
  

  

}
