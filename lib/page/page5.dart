//////////////////////////// สมัครสมาชิกผู้จัดการ ///////////////////////////////////////

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' show utf8;

import 'package:homealone/page/page6.dart';


var encoded = utf8.encode('Lorem ipsum dolor sit amet, consetetur...');
var decoded = utf8.decode(encoded);

class page5 extends StatefulWidget {
  const page5({Key? key}) : super(key: key);

  @override
  _page5State createState() => _page5State();
}

class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              SizedBox(height: 60),
 ////////// ข้อมูลส่วนตัว
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "ข้อมูลส่วนตัว;;;",
                        style: TextStyle(
                            color: Color.fromRGBO(2, 97, 26, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30.0,height: 20.0),
                        new Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          //decoration: kBoxDecorationStyle ,
                          height: 70.0,
                          width: 160.0,
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(250, 120, 186, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ชื่อ',
                                labelStyle: new TextStyle(
                                    color: const Color.fromRGBO(250, 120, 186, 1)
                                ),
                                // hintText: 'Enter valid mail id as abc@gmail.com'
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                )
                            ),
                          ),
                        ),

                        new Container(

                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          //decoration: kBoxDecorationStyle ,
                          height: 70.0,
                          width: 160.0,
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(250, 120, 186, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'สกุล',
                                labelStyle: new TextStyle(
                                    color: const Color.fromRGBO(250, 120, 186, 1)
                                ),
                                // hintText: 'Enter valid mail id as abc@gmail.com'
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                )
                            ),
                          ),
                        ),

                      ],
                    ),
                    ////////// เลขบัตรประชาชน
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Container(

                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,
                            height: 80.0,
                            width: 300.0,
                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'เลขบัตรประชาชน',
                                  labelStyle: new TextStyle(
                                      color: const Color.fromRGBO(250, 120, 186, 1)
                                  ),
                                  // hintText: 'Enter valid mail id as abc@gmail.com'
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                  )
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),

////////// ที่อยู่
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Container(

                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,
                            height: 70.0,
                            width: 300.0,
                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'ที่อยู่สำนักงาน',
                                  labelStyle: new TextStyle(
                                      color: const Color.fromRGBO(250, 120, 186, 1)
                                  ),
                                  // hintText: 'Enter valid mail id as abc@gmail.com'
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

////////// เบอร์โทร
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Container(

                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,
                            height: 80.0,
                            width: 300.0,
                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'เบอร์โทร',
                                  labelStyle: new TextStyle(
                                      color: const Color.fromRGBO(250, 120, 186, 1)
                                  ),
                                  // hintText: 'Enter valid mail id as abc@gmail.com'
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                  )
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),

////////// facebook
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Container(

                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,
                            height: 70.0,
                            width: 300.0,
                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'facebook',
                                  labelStyle: new TextStyle(
                                      color: const Color.fromRGBO(250, 120, 186, 1)
                                  ),
                                  // hintText: 'Enter valid mail id as abc@gmail.com'
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

////////// line id
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Container(

                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,
                            height: 80.0,
                            width: 300.0,
                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'line id',
                                  labelStyle: new TextStyle(
                                      color: const Color.fromRGBO(250, 120, 186, 1)
                                  ),
                                  // hintText: 'Enter valid mail id as abc@gmail.com'
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),


              SizedBox(height: 60),
 ////////// ข้อมูลบัญชีธนาคาร
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ข้อมูลบัญชีธนาคาร",
                      style: TextStyle(
                        color: Color.fromRGBO(2, 97, 26, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30.0,height: 20.0),
                        new Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          //decoration: kBoxDecorationStyle ,
                          height: 70.0,
                          width: 160.0,
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(250, 120, 186, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ชื่อ',
                                labelStyle: new TextStyle(
                                    color: const Color.fromRGBO(250, 120, 186, 1)
                                ),
                                // hintText: 'Enter valid mail id as abc@gmail.com'
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                )
                            ),
                          ),
                        ),

                        new Container(

                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          //decoration: kBoxDecorationStyle ,
                          height: 70.0,
                          width: 160.0,
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(250, 120, 186, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'สกุล',
                                labelStyle: new TextStyle(
                                    color: const Color.fromRGBO(250, 120, 186, 1)
                                ),
                                // hintText: 'Enter valid mail id as abc@gmail.com'
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                )
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                      ),
                      //decoration: kBoxDecorationStyle ,
                      height: 70.0,
                      width: 300.0,
                      child: TextField(
                        style: TextStyle(
                          color: Color.fromRGBO(250, 120, 186, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: ' ชื่อธนาคาร',
                            labelStyle: new TextStyle(
                                color: const Color.fromRGBO(250, 120, 186, 1)
                            ),
                            // hintText: 'Enter valid mail id as abc@gmail.com'
                            enabledBorder: new UnderlineInputBorder(
                                borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                      ),
                      //decoration: kBoxDecorationStyle ,
                      height: 80.0,
                      width: 300.0,
                      child: TextField(
                        style: TextStyle(
                          color: Color.fromRGBO(250, 120, 186, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'เลขบัญชี',
                            labelStyle: new TextStyle(
                                color: const Color.fromRGBO(250, 120, 186, 1)
                            ),
                            // hintText: 'Enter valid mail id as abc@gmail.com'
                            enabledBorder: new UnderlineInputBorder(
                                borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                            )
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child :
                new FlatButton (
                  minWidth: 200.0,
                  height: 70.0,
                  color: Color.fromRGBO(247, 207, 205, 1),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page6 ()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ยืนยัน",
                        style: TextStyle(
                          color: Color.fromRGBO(250, 120, 186, 1),
                          fontSize: 16  ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                      ),
                    ],
                  ),
                  shape: StadiumBorder(
                      side: BorderSide(width: 1.0,color: Color.fromRGBO(250, 120, 186, 1),)
                  ),
                ),
              ) ,
            ],

          ),

        ),
      ),
    );
  }
}




