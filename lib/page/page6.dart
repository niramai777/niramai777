//////////////////////////////// หน้า Home ผู้จัดการ ////////////////////////////////
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homealone/page/page16.dart';
import 'package:homealone/page/page17.dart';
import 'package:homealone/page/page18.dart';
import 'package:homealone/page/page22.dart';
import 'package:homealone/page/page7.dart';
import 'package:image_picker/image_picker.dart';
import 'package:homealone/Icon_img/imgIcon.dart';

import 'home.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  _page6State createState() => _page6State();
}

class _page6State extends State<page6> {

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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget> [
                  Center(child: Text(
                      "Show บ้านเช่าทุกหลัง",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                   ),
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        child: Icon(
                            Icons.add,
                            size: 30,
                        ),
                        backgroundColor:  Color.fromRGBO(250, 120, 186, 1),
                        foregroundColor: Colors.white,
                        onPressed: () => {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page7()),
                        )
                        },
                      ),
                    ],
                  ),
              ],
            ),
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
                      MaterialPageRoute(builder: (context) => page16()),
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
                      MaterialPageRoute(builder: (context) => page17()),
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
                      MaterialPageRoute(builder: (context) => page18()),
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
                  child: Column(
                    children: <Widget>[

                      CircleAvatar(
                        radius: 80.0,
                        backgroundColor: Color.fromRGBO(247, 207, 205, 1),
                        //backgroundImage: ,
                        // backgroundImage: image,
                        child:IconButton(
                          padding: EdgeInsets.all(110),
                          icon: const Icon(Icons.camera_alt),
                          color: Colors.white,
                          onPressed: () async {

                            image = await ImagePicker().pickImage(
                                source: ImageSource.gallery);
                            // setState(() {
                            // });
                            },
                        ),
                      ),
                      // (image != null) ? Image.file(image) : Container(
                      //   child: Image.asset("img/logo.png",
                      //     fit: BoxFit.fill),
                      //
                      // )
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

                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(

                    padding: const EdgeInsets.all(10.0),
                    child :
                    new FlatButton (
                      minWidth: 300.0,
                      height: 120.0,

                      onPressed: () {
                      },
                      child:
                      Text("ข้อมูลการเช่าบ้าน",
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

                      },
                      child:
                      Text("ข้อมูลผู้เช่า",
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
                    padding: const EdgeInsets.all(10.0),
                    child :
                    new FlatButton (
                      minWidth: 300.0,
                      height: 120.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page22()),
                        );
                      },
                      child:
                      Text("ข้อมูลรายได้",
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
