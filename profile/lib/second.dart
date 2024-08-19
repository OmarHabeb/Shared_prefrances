import 'package:flutter/material.dart';
import 'package:profile/shared.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  var cache = CacheHelper();
  var res1;
  var res2;
  var res3;
  @override
  void initState() {
    var name_res = cache.getData(key: 'name');
    var email_res = cache.getData(key: 'email');
    var age_res = cache.getData(key: 'age');
    if (name_res != null && email_res != null && age_res != null) {
      res1 = name_res;
      res2 = email_res;
      res3 = age_res;
    } else {
      res1 = '';
      res2 = '';
      res3 = '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(30),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
               ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "Name"),
                  controller: name,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Email"),
                  controller: email,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: "Age"),
                  controller: age,
                ),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                       ),
                    child: TextButton(
                        onPressed: () {
                          cache.setData(key: 'name', value: name.text);
                          cache.setData(key: 'email', value: email.text);
                          cache.setData(key: 'age', value: age.text);
                          setState(() {
                            res1 = name.text;
                            res2 = email.text;
                            res3 = age.text;
                          });
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(30),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
             ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Name: $res1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Email: $res2",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Age: $res3",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
