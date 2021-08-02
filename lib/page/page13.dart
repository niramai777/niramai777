
///////////////////////////////////// จ่ายค่าน้ำ //////////////////////////////////

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page13 extends StatefulWidget {
  const page13({Key? key}) : super(key: key);

  @override
  _page13State createState() => _page13State();
}

class _page13State extends State<page13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
        centerTitle: true,
        title: Image.asset('img/logo.png'),
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ค่าน้ำประจำเดือน  ",
              style: TextStyle(
                color: Color.fromRGBO(250, 120, 186, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),
            Text("Show ชื่อผู้เช่า",
              style: TextStyle(
                color: Color.fromRGBO(250, 120, 186, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),
            Text("show ที่อยู่บ้านเช่า",
              style: TextStyle(
                color: Color.fromRGBO(250, 120, 186, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),
            Text("show จำนวนค่าน้ำ",
              style: TextStyle(
                color: Color.fromRGBO(250, 120, 186, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),


            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    IconButton(
                      onPressed: () async{
                      },
                      icon: const Icon(
                        Icons.image,
                      ),
                      iconSize: 200,
                      color: Color.fromRGBO(247, 207, 205, 1),

                    ),
                  ]

              ),
            ),

          ],
        ),
      ),
    );
  }
}
