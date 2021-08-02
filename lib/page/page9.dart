

///////////////////////////////////// ค่าเช่า /////////////////////////////////////

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page12.dart';


class page9 extends StatefulWidget {
  const page9({Key? key}) : super(key: key);

  @override
  _page9State createState() => _page9State();
}

class _page9State extends State<page9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
        centerTitle: true,
        title: Image.asset('img/logo.png'),
      ),

      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(40.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80.0,),
                Column(

                 children: [
                   Text("เดือน",
                     style: TextStyle(
                       color: Color.fromRGBO(250, 120, 186, 1),
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                       fontFamily: 'Roboto',
                     ),
                   ),
                 ],
                ),

                SizedBox(width: 30.0,),
                Column(

                  children: [
                    Text("จำนวน (บาท)",
                      style: TextStyle(
                        color: Color.fromRGBO(250, 120, 186, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 30.0,),
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child :
                      new FlatButton (
                        minWidth: 60.0,
                        height: 20.0,
                        color: Color.fromRGBO(250, 120, 186, 1),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page12()),
                          );
                        },
                        child: Row(
                          children: [
                            Text("จ่ายเงิน  ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16  ,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                            ),
                          ],
                        ),
                        shape: StadiumBorder(
                            side: BorderSide(width: 1.0, color: Color.fromRGBO(250, 120, 186, 1),)
                        ),
                      ),
                    ) ,
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
