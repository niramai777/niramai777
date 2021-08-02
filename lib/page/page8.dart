/////////////// โชว์ข้อมูลบ้านเช่าของผู้เช่า

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class page8 extends StatefulWidget {
  const page8({Key? key}) : super(key: key);

  @override
  _page8State createState() => _page8State();
}

class _page8State extends State<page8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("โชว์ข้อมูลบ้านเช่าของผู้เช่า",
        style: TextStyle(
          fontSize: 20,
        )
        ),
      ),
    );
  }
}


