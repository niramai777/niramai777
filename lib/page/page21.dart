////////////////////////// เพิ่มค่าไฟ

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page18.dart';

class page21 extends StatefulWidget {
  const page21({Key? key}) : super(key: key);

  @override
  _page21State createState() => _page21State();
}

class _page21State extends State<page21> {

  DateTime selectedDate = DateTime.now();
  _buildMaterialDatePicker(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      initialEntryMode: DatePickerEntryMode.calendar,
      initialDatePickerMode: DatePickerMode.day,
      helpText: 'Choose date',
      cancelText: 'Cancel',
      confirmText: 'Save',
      errorFormatText: 'Invalid date format',
      errorInvalidText: 'Invalid date format',
      fieldLabelText: 'Start date',
      fieldHintText: 'Year/Month/Date',
      builder: (context, conn) {
        return Theme(
          data: ThemeData.dark(),
          child: Center(child: conn) ,
          // child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
        centerTitle: true,
        title: Image.asset('img/logo.png'),
      ),

      body: Container(
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _buildMaterialDatePicker(context);
                    },
                    child: Text(

                      "${selectedDate.toLocal()}".split(' ')[0] ?? 'Select Date',
                      style: TextStyle(
                        color: const Color.fromRGBO(250, 100, 200, 1),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20,
                      ),
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
                                labelText: 'ชื่อ-สกุล ผู้เช่า',
                                labelStyle: new TextStyle(
                                    color: const Color.fromRGBO(250, 120, 186, 1)
                                ),
                                // hintText: 'Enter valid mail id as abc@gmail.com'
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                )
                            ),
                            //keyboardType: TextInputType.number,
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
                                labelText: 'ที่อยู่บ้านเช่า',
                                labelStyle: new TextStyle(
                                    color: const Color.fromRGBO(250, 120, 186, 1)
                                ),
                                // hintText: 'Enter valid mail id as abc@gmail.com'
                                enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                )
                            ),
                            //keyboardType: TextInputType.number,
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
                                labelText: 'ค่าไฟ (บาท)',
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

                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child :
                        new FlatButton (
                          minWidth: 120.0,
                          height: 50.0,
                          color: Color.fromRGBO(247, 207, 205, 1),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => page18()),
                            );
                          },
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
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
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child :
                        new FlatButton (
                          minWidth: 120.0,
                          height: 50.0,
                          // color: Color.fromRGBO(247, 207, 205, 1),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => page18()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("ยกเลิก",
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
                    ],
                  ) ,
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
