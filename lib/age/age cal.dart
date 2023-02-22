import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  TextEditingController txta = TextEditingController();
  TextEditingController txtb  = TextEditingController();
  int ans=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                Text("Enter the Birth"),
                TextField(
                  controller: txta,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.menu),
                  ),
                ),
                Text("Today date"),
                TextField(
                  controller: txtb,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.menu),
                  ),
                ),
                ElevatedButton(onPressed: () {
                  String a= txta.text;
                  String b= txtb.text;
                  int x=int.parse(a);
                  int y=int.parse(b);
                  setState(() {
                    ans=y-x;
                  });
                }, child: Text("sumit"))
              ],
            ),
          ),
          SizedBox(height: 100),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("${ans}year"),
          ),
        ],
      ),
    );
  }
}
