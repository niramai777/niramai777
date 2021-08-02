

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page22 extends StatefulWidget {
  const page22({Key? key}) : super(key: key);

  @override
  _page22State createState() => _page22State();
}

class _page22State extends State<page22> {

  var dateTime = DateTime.now();
  var dateTime1 = DateTime.now();

  Future<void> chooseDate()async {
    DateTime? chooseDateTime = await showDatePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year-5),
        lastDate: DateTime(DateTime.now().year+20),
        initialDate: dateTime,
    );

    if(chooseDateTime != null&& chooseDateTime != dateTime){
      setState(() {
        dateTime = chooseDateTime;
      });
    }
  }

  Future<void> choose()async {
    DateTime? DateTimechoose = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+20),
      initialDate: dateTime,
    );

    if(DateTimechoose != null&& DateTimechoose != dateTime1){
      setState(() {
        dateTime1 = DateTimechoose;
      });
    }
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                       child: ListTile(
                         leading: Icon(Icons.date_range,
                           color: const Color.fromRGBO(250, 100, 200, 1), ),
                         title: Text('เดือนเริ่ม ${dateTime.day} - ${dateTime.month} - ${dateTime.year}',
                           style: TextStyle(
                             color: const Color.fromRGBO(250, 100, 200, 1),
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Kanit',
                             fontSize: 20,
                           ),
                         ),

                         trailing: Icon(Icons.keyboard_arrow_down),
                         onTap: (){
                           chooseDate();
                         },
                       ),
                     ),

              Center(
                child: ListTile(
                  leading: Icon(Icons.date_range,
                  color: const Color.fromRGBO(250, 100, 200, 1),
                  ),
                  title: Text('เดือนสิ้นสุด ${dateTime1.day} - ${dateTime1.month} - ${dateTime1.year}',
                    style: TextStyle(
                      color: const Color.fromRGBO(250, 100, 200, 1),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kanit',
                      fontSize: 20,
                    ),
                  ),

                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: (){
                    choose();
                  },
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child :
                  new FlatButton (
                    minWidth: 120.0,
                    height: 50.0,
                    color: Color.fromRGBO(247, 207, 205, 1),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => page17()),
                      // );
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
              ),
            ],
          ),
        ),

      ),
    );
  }
}
