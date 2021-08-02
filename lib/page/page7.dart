/////////////////////////////// เพิ่มบ้านเช่า ///////////////////////////////////////

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page6.dart';

class page7 extends StatefulWidget {
  const page7({Key? key}) : super(key: key);

  @override
  _page7State createState() => _page7State();
}

class _page7State extends State<page7> {

  String dropdownValue1 = 'ประเภทบ้าน';
  String dropdownValue2 = '1';
  String dropdownValue3 = '1';
  String dropdownValue4 = '1';
  String dropdownValue5 = '1';


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body:  Container(
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: <Widget> [
                      SizedBox(height: 60),
/////////////////////////////////// ข้อมูลบ้านเช่า //////////////////////////////////
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ข้อมูลบ้านเช่า",
                              style: TextStyle(
                                color: Color.fromRGBO(2, 97, 26, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                            ),

                            ////////// ชื่อบ้าน
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
                                          labelText: 'ชื่อบ้านเช่า',
                                          labelStyle: new TextStyle(
                                              color: const Color.fromRGBO(250, 120, 186, 1)
                                          ),
                                          // hintText: 'Enter valid mail id as abc@gmail.com'
                                          enabledBorder: new UnderlineInputBorder(
                                              borderSide: new BorderSide(color: Color.fromRGBO(250, 120, 186, 1))
                                          )
                                      ),
                                      // keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///////// ที่อยู่บ้านเช่า
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
                                      // keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //////// พื้นที่บ้านเช่า
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
                                          labelText: 'ขนาดพื้นที่  (ตร.ม)',
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

                            ///////// ตำแหน่งที่ตั้ง
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  new Container(
                                    child :
                                    new FlatButton (
                                      minWidth: 200.0,
                                      height: 50.0,
                                      color: Color.fromRGBO(247, 207, 205, 1),
                                      onPressed: () {},
                                      child: Text(" ตำแหน่งที่ตั้ง ",
                                        style: TextStyle(
                                          color: Color.fromRGBO(250, 120, 186, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Kanit',
                                        ),),
                                      shape: StadiumBorder(
                                          side: BorderSide(width: 3.0,color: Color.fromRGBO(247, 207, 205, 1))
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

////////////////////////////////// ลักษณะบ้านเช่า //////////////////////////////////
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ลักษณะบ้าน",
                              style: TextStyle(
                                color: Color.fromRGBO(2, 97, 26, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                            ),

                            DropdownButton<String>(
                              value: dropdownValue1,
                              icon: const Icon(Icons.arrow_circle_down,
                                color: Color.fromRGBO(250, 120, 186, 1),
                              ),
                              iconSize: 24,
                              iconDisabledColor: Color.fromRGBO(250, 120, 186, 1),
                              elevation: 16,
                              style: const TextStyle(
                                color: Color.fromRGBO(250, 120, 186, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',

                              ),
                              underline: Container(
                                height: 2,
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("ห้องนอน",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                ),
                                SizedBox(width: 20,),
                                DropdownButton<String>(
                                  value: dropdownValue2,
                                  icon: const Icon(Icons.arrow_circle_down,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  iconSize: 24,

                                  elevation: 16,
                                  style: const TextStyle(
                                    color:Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                  underline: Container(
                                    height: 2,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue2 = newValue!;
                                    });
                                  },
                                  items: <String>[ '1', '2', '3','4','5','6']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),

                                SizedBox(width: 40,),
                                Text("ห้องน้ำ",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                ),
                                SizedBox(width: 20,),
                                DropdownButton<String>(
                                  value: dropdownValue3,
                                  icon: const Icon(Icons.arrow_circle_down,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                  underline: Container(
                                    height: 2,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue3 = newValue!;
                                    });
                                  },
                                  items: <String>[ '1', '2', '3','4','5','6']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),


                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("ห้องรับแขก",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                ),
                                SizedBox(width: 20,),
                                DropdownButton<String>(
                                  value: dropdownValue4,
                                  icon: const Icon(Icons.arrow_circle_down,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(
                                    color:Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                  underline: Container(
                                    height: 2,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue4 = newValue!;
                                    });
                                  },
                                  items: <String>['1', '2', '3','4','5','6']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),

                                SizedBox(width: 40,),
                                Text("ห้องครัว",
                                  style: const TextStyle(
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                ),
                                SizedBox(width: 20,),
                                DropdownButton<String>(
                                  value: dropdownValue5,
                                  icon: const Icon(Icons.arrow_circle_down,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kanit',
                                  ),
                                  underline: Container(
                                    height: 2,
                                    color: Color.fromRGBO(250, 120, 186, 1),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue5 = newValue!;
                                    });
                                  },
                                  items: <String>['1', '2', '3','4','5','6']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),


                              ],
                            ),

                          ],
                        ),
                      ),


                      SizedBox(height: 60),
///////////////////////////////// ข้อมูลค่าใช้จ่าย ///////////////////////////////////
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ข้อมูลค่าใช้จ่าย",
                              style: TextStyle(
                                color: Color.fromRGBO(2, 97, 26, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                            ),

                            ////////// ค่าเช่าบ้าน
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
                                          labelText: 'ค่าเช่าบ้าน    (บาท / เดือน)',
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

                            ///////// ค่ามัดจำบ้าน
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
                                          labelText: 'ค่ามัดจำบ้าน   (บาท)',
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

                            //////// ค่าประกันบ้าน
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
                                          labelText: 'ค่าประกันบ้าน     (บาท)',
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

                            ///////// อัตราค่าน้ำ
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
                                          labelText: 'อัตราค่าน้ำ    (บาท / หน่วย)',
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

                            //////// อัตราค่าไฟ
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
                                          labelText: 'อัตราค่าไฟ  (บาท / หน่วย)',
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


                          ],
                        ),
                      ),

                      SizedBox(height: 60),
///////////////////////////// รูปภาพบ้านเช่า /////////////////////////////////////////
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "รูปภาพบ้านเช่า",
                              style: TextStyle(
                                color: Color.fromRGBO(2, 97, 26, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Kanit',
                              ),
                            ),

                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_photo_alternate,
                                    size: 200,
                                   // Color.fromRGBO(247, 207, 205, 1),
                                    color: Color.fromRGBO(250, 200, 210, 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                                  MaterialPageRoute(builder: (context) => page6 ()),
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
                                  MaterialPageRoute(builder: (context) => page6 ()),
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
                ),
              ],
            ),


        ),
    );
  }
}
