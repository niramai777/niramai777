////////////////////////////// จ่ายค่าเช่า //////////////////////////////////


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class page12 extends StatefulWidget {
  const page12({Key? key}) : super(key: key);

  @override
  _page12State createState() => _page12State();
}

class _page12State extends State<page12> {



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
            Text("ค่าเช่าประจำเดือน  ",
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
            Text("show จำนวนค่าเช่า",
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

