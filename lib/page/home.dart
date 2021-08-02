import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page1.dart';
import 'dart:convert' show utf8;

var encoded = utf8.encode('Lorem ipsum dolor sit amet, consetetur...');
var decoded = utf8.decode(encoded);


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String dropdownValue1 = 'ประเภทบ้าน';

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(247, 207, 205, 1),
          centerTitle: true,
          title:Image.asset('img/logo.png'),
          actions: <Widget>[
            Row(
                children:[
                  FlatButton(
                    textColor: Color.fromRGBO(250, 120, 186, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page1()),
                      );
                    },
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(
                        color: Color.fromRGBO(250, 120, 186, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),
                    ),
                    shape: StadiumBorder(
                        side: BorderSide(width: 2.0,color: Colors.transparent)
                    ),

                  ),
                ]

            )

          ],

        ),
        body:
        new Container(
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: new Container(
                              height: 60.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                              ),
                              //decoration: kBoxDecorationStyle ,

                              child: TextField(
                                style: TextStyle(
                                  color: Color.fromRGBO(250, 120, 186, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Kanit',
                                ),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'ชื่อบ้านเช่า',
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 60.0,
                              width: 100.0,
                              child: DropdownButton<String>(
                                value: dropdownValue1,
                                icon: const Icon(Icons.arrow_circle_down,
                                  color: Color.fromRGBO(250, 120, 186, 1),
                                ),
                                iconSize: 18,
                                iconDisabledColor: Color.fromRGBO(250, 120, 186, 1),
                                elevation: 10,
                                style: const TextStyle(
                                  color: Color.fromRGBO(250, 120, 186, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Kanit',

                                ),
                                underline: Container(
                                  height: 1,
                                  color: Color.fromRGBO(250, 120, 186, 1),
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue1 = newValue!;
                                  });
                                },
                                items: <String>['ประเภทบ้าน', 'บ้านเดี่ยว', 'บ้านแฝด']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),

                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: new Container(
                            height: 40.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,

                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'จังหวัด',
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: new Container(
                            height: 40.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,

                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'อำเภอ',
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: new Container(
                            height: 40.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                            ),
                            //decoration: kBoxDecorationStyle ,

                            child: TextField(
                              style: TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'ตำบล',
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
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(width: 10,),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child :
                            new FlatButton (
                              minWidth: 100.0,
                              height: 50.0,
                              color: Color.fromRGBO(247, 207, 205, 1),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => page6 ()),
                                // );
                              },
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("ค้นหา",
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
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: IconButton(
                            onPressed:() {} ,
                            icon: const Icon(Icons.location_on),
                            iconSize: 40,
                            color: Color.fromRGBO(250, 120, 186, 1),
                          ),
                        ),


                      ],
                    ),


                  ],

                ),
              ),
            ],
          ),

        )

      //
    );
  }
}

