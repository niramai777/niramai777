//////////////////////////// Home ของผู้เช่า ///////////////////////////////////////
import 'dart:ui';
import 'package:homealone/Icon_img/imgIcon.dart';
import 'package:homealone/page/home.dart';
import 'package:homealone/page/page10.dart';
import 'package:homealone/page/page11.dart';
import 'package:homealone/page/page15.dart';
import 'package:homealone/page/page5.dart';
import 'package:homealone/page/page8.dart';
import 'package:homealone/page/page9.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' show utf8;


var encoded = utf8.encode('Lorem ipsum dolor sit amet, consetetur...');
var decoded = utf8.decode(encoded);

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {

  String dropdownValue1 = 'ประเภทบ้าน';
  int _selectedIndex = 0;
  var image;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    final tabs = [
////////////////////////////หน้า home //////////////////////////////////////////////
      Container(
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

      ),
////////////////////////////////////////////////////////////////////////////////
//////////////////////////////หน้า pay /////////////////////////////////////////////
      Center(

        child: Container(
          child: ListView(
            children: <Widget> [
              SizedBox(
                height: 50.0,
              ),
              Center(
                  child: Text(
                      "การจ่ายเงิน",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        color: Color.fromRGBO(250, 120, 186, 1),
                      )
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child :
                new FlatButton (
                  minWidth: 300.0,
                  height: 100.0,
                  color: Color.fromRGBO(247, 207, 205, 1),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page9()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.home_rounded,
                        color: Color.fromRGBO(250, 120, 186, 1),
                        size: 50,
                      ),
                      Text("ค่าเช่าบ้าน",
                        style: TextStyle(
                          height: 2,
                          color: Color.fromRGBO(2, 97, 26, 1),
                          fontSize: 25  ,
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

              Padding(
                padding: const EdgeInsets.all(20.0),
                child :
                new FlatButton (
                  minWidth: 300.0,
                  height: 100.0,
                  color: Color.fromRGBO(247, 207, 205, 1),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page10()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        imgIcon.water,
                        color: Colors.lightBlueAccent,
                        size: 30,
                      ),
                      Text("ค่าน้ำประปา",
                        style: TextStyle(
                          height: 2,
                          color: Color.fromRGBO(2, 97, 26, 1),
                          fontSize: 25  ,
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

              Padding(
                padding: const EdgeInsets.all(20.0),
                child :
                new FlatButton (
                  minWidth: 300.0,
                  height: 100.0,
                  color: Color.fromRGBO(247, 207, 205, 1),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page11()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.wb_incandescent,
                        color: Colors.orangeAccent,
                        size: 50,
                      ),
                      Text("ค่าไฟฟ้า",
                        style: TextStyle(
                          height: 2,
                          color: Color.fromRGBO(2, 97, 26, 1),
                          fontSize: 25  ,
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

//// หน้า pro file
///////////////////////// Image profile ////////////////////////////////////////
      Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Stack(
                    children: <Widget>[

                      CircleAvatar(
                        radius: 80.0,
                        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
                        //backgroundImage: ,
                        child:IconButton(
                          padding: EdgeInsets.all(110),
                          icon: const Icon(Icons.camera_alt),
                          color: Colors.white,
                          onPressed: () async {
                            var image = await ImagePicker().pickImage(source: ImageSource.gallery );
                          },
                        ),
                      ),
                      // (image != null) ? Image.file(image) : Container()
                    ],
                  ),
                ),
              ),
////////////////////////////////////////////////////////////////////////////////
//////////////////////////ชื่อ-สกุล , Username/////////////////////////////////////
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "ชื่อ-สกุล",
                      style: TextStyle(
                        color: Color.fromRGBO(250, 120, 186, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "Username",
                      style: TextStyle(
                        color: Color.fromRGBO(250, 120, 186, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                      ),
                    ),
                  )
                ],
              ),
////////////////////////////////////////////////////////////////////////////////
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child :
                    new FlatButton (
                      minWidth: 100.0,
                      height: 40.0,

                      onPressed: () {

                      },
                      child: Text("แก้ไขข้อมูลส่วนตัว",
                        style: TextStyle(
                          color: Color.fromRGBO(247, 207, 205, 1),
                          fontSize: 14  ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),),
                      shape: StadiumBorder(
                          side: BorderSide(width: 1.0,color: Color.fromRGBO(247, 207, 205, 1))
                      ),
                    ),
                  ),
////////////////////////////////////////////////////////////////////////////////
///////////////////////
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child :
                    new FlatButton (
                      minWidth: 400.0,
                      height: 60.0,
                      color: Color.fromRGBO(247, 207, 205, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page5()),
                        );
                      },
                      child:
                      Text("ลงทะเบียนเป็นเจ้าของบ้านเช่า",
                        style: TextStyle(
                          color: Color.fromRGBO(250, 120, 186, 1),
                          fontSize: 18  ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                      ),



                      shape: StadiumBorder(
                          side: BorderSide(width: 1.0,color: Color.fromRGBO(250, 120, 186, 1),)
                      ),
                    ),
                  ),
////////////////////////////////////////////////////////////////////////////////

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child :
                    new FlatButton (
                      minWidth: 300.0,
                      height: 120.0,

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page8()),
                        );
                      },
                      child:
                      Text("ข้อมูลบ้านเช่า",
                        style: TextStyle(
                          color: Color.fromRGBO(250, 120, 186, 1),
                          fontSize: 20  ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                      ),


                      shape: StadiumBorder(
                          side: BorderSide(width: 2.0,color: Color.fromRGBO(250, 120, 186, 1))
                      ),
                    ),
                  ) ,
////////////////////////////////////////////////////////////////////////////////

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child :
                    new FlatButton (
                      minWidth: 300.0,
                      height: 120.0,

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page15()),
                        );
                      },
                      child:
                      Text("เขียนรีวิว",
                        style: TextStyle(
                          color: Color.fromRGBO(250, 120, 186, 1),
                          fontSize: 20  ,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                      ),


                      shape: StadiumBorder(
                          side: BorderSide(width: 2.0,color: Color.fromRGBO(250, 120, 186, 1))
                      ),
                    ),
                  ),
////////////////////////////////////////////////////////////////////////////////

                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child :
                    new FlatButton (
                      //minWidth: 200.0,
                      height: 70.0,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ออกจากระบบ  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16  ,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                            ),
                          ),
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                            size: 22,
                          ),
                        ],
                      ),
                      shape: StadiumBorder(
                          side: BorderSide(width: 1.0,color: Colors.red)
                      ),
                    ),
                  ) ,
                ],
              )

            ],
          ),
        ),
      ),

    ];


    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(247, 207, 205, 1),
          centerTitle: true,
          title: Image.asset('img/logo.png'),
      ),

      body: tabs[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home,
                color: Color.fromRGBO(250, 120, 186, 1),),
            title: Text('Home',
                style: TextStyle(
                    color: Color.fromRGBO(250, 120, 186, 1),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                ),
                ),

          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.account_balance_wallet,
              color: Color.fromRGBO(250, 120, 186, 1),
            ),
            title: Text('Pay',
              style: TextStyle(
                  color: Color.fromRGBO(250, 120, 186, 1),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
               ),
             ),
          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.account_box_rounded,
              color: Color.fromRGBO(250, 120, 186, 1),
            ),
            title: Text('Profile',
              style: TextStyle(
                color: Color.fromRGBO(250, 120, 186, 1),
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
       // currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

    );
  }
}



