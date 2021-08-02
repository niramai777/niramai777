// login
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page4.dart';
import 'dart:convert' show utf8;

var encoded = utf8.encode('Lorem ipsum dolor sit amet, consetetur...');
var decoded = utf8.decode(encoded);

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
      ),
      body: Container(
        decoration: new BoxDecoration(color:Colors.white ),
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromRGBO(250, 120, 186, 1),
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: 10.0),

                   new Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                      ),
                      //decoration: kBoxDecorationStyle ,
                      height: 50.0,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ชื่อผู้ใช้',
                            labelStyle: new TextStyle(
                                color: const Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                            ),
                           // hintText: 'Enter valid mail id as abc@gmail.com'
                            enabledBorder: new UnderlineInputBorder(
                               borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                      )
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                      ),
                      //decoration: kBoxDecorationStyle ,
                      height: 150.0,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'รหัสผ่าน',
                            labelStyle: new TextStyle(
                                color: const Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                            ),
                            // hintText: 'Enter valid mail id as abc@gmail.com'
                            enabledBorder: new UnderlineInputBorder(
                                borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                            )
                        ),
                      ),
                    ),

              ///////// button
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           new RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color.fromRGBO(250, 120, 186, 1)
                              )
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => page4()),
                                );
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Color.fromRGBO(250, 120, 186, 1),
                              textColor: Colors.white,
                              child: Text("Sing in",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',)
                              ),
                      ),
                           SizedBox(width: 100.0),
                           new RaisedButton(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(18.0),
                                 side: BorderSide(color: Color.fromRGBO(247, 207, 205, 1)
                                 )
                             ),
                             onPressed: () {},
                             padding: EdgeInsets.all(10.0),
                             color: Colors.white,
                             textColor: Color.fromRGBO(247, 207, 205, 1),
                             child: Text("ลืมรหัสผ่าน",
                                 style: TextStyle(fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'Kanit',)
                             ),
                           ),
                         ],
                       ),

                  ]
              ),
            ),


          ),

        ),
      ),

    );
  }
}
