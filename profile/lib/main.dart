import 'package:flutter/material.dart';
import 'package:profile/second.dart';
import 'package:profile/shared.dart';
import 'package:responsive_screen_utils/responsive_screenutil_init.dart';

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
       home:second(),
    );
  }
}

     
     
 