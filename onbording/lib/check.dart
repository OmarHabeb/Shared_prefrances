import 'package:flutter/material.dart';
import 'package:onbording/newscreen.dart';
import 'package:onbording/onbording.dart';
import 'package:onbording/shared.dart';


class checking extends StatefulWidget {
  checking({super.key});

  @override
  State<checking> createState() => _checkingState();
}

class _checkingState extends State<checking> {
  bool? check;
  var cache = CacheHelper();

  @override
  void initState() {
    var ras = cache.getData(key: 'data');
    if (ras != null) {
      check = ras;
    } else {
      check = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return check! ? MyHome() : newscreen();
  }
}
