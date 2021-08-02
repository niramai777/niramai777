import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page2.dart';
import 'package:homealone/page/page3.dart';
import 'dart:convert' show utf8;

var encoded = utf8.encode('Lorem ipsum dolor sit amet, consetetur...');
var decoded = utf8.decode(encoded);

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children:[
                Image.asset('img/biglogo.png'),
                new Padding(
                  child :
                  new FlatButton (
                    minWidth: 300.0,
                    height: 60.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page2()),
                      );
                    },
                    child: Text("ลงชื่อเข้าใช้",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 97, 26, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),),

                    shape: StadiumBorder(
                        side: BorderSide(width: 3.0,color: Color.fromRGBO(247, 207, 205, 1))
                    ),
                  ),
                  padding: const EdgeInsets.all(20.0),
                ),

                new Padding(
                  child :
                  new FlatButton (
                    minWidth: 300.0,
                    height: 60.0,

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page3()),
                      );
                    },
                    child: Text("สมัครสมาชิก",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 97, 26, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),),
                    shape: StadiumBorder(
                        side: BorderSide(width: 3.0,color: Color.fromRGBO(247, 207, 205, 1))
                    ),
                  ),
                  padding: const EdgeInsets.all(5.0),
                ),
              ],

            ),
          ),

        ),

      ),

    );
  }
}
