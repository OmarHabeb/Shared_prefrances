import 'package:flutter/material.dart';
import 'package:theme/shared.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  var cache = CacheHelper();

  bool? switchvalue;
    void initState() {
    var rd = cache.getData(key: 'value');
    if (rd != null) {
      switchvalue = rd;
    } else {
      switchvalue = false;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: switchvalue! ?  Colors.black: Colors.white ,
      body: Center(
        child: Switch(
          value: switchvalue!,
          onChanged: (value) {
            setState(() {
              switchvalue = value;
              cache.setData(key: 'value', value: switchvalue);
            });
          },
        ),
      ),
    );
  }
}