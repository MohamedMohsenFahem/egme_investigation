import 'package:egme_investigation/screens/egme/model_egma.dart';
import 'package:flutter/material.dart';

import '../Subject.dart';

class EGME extends StatefulWidget {
   EGME({super.key, });

  @override
  State<EGME> createState() => _EGMEState();
}

class _EGMEState extends State<EGME> {
  List<Subject_model>? subject = [
    Subject_model(
      date: '1/1/2023',
      event: 'car' ,
      hazard:'open' ,
      location: 'cia',
      reason: 1,
      recommendation:3 ,
      Reg: 'GOLF',
      risk_index:'to' ,
      Rod_couse: 'because',
      summary: 'go to his',

    ),
    Subject_model(
      date: ' ',
      event: '' ,
      hazard:'' ,
      location: '',
      reason: 1,
      recommendation:3 ,
      Reg: 'GOLF',
      risk_index:'' ,
      Rod_couse: '',
      summary: '',

    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[50],
        title: Text(
          'EGME'
        ),
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount:subject?.length ,
          itemBuilder: (context, index) =>
            customListTile(subject![index], context),

            )
        ),
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: Color(0xFF68BADB),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                TextButton(
                 onPressed: (){},
                 child: Text(
                     'Date',
                     style:TextStyle(
                       fontSize: 20,
                       color: Colors.black
                     ) ,
                 )
             ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                  'Reg.',
                  style:TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ) ,
                )
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Subject',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ) ,
                    )
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Hazard',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ) ,
                    )
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Location',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ) ,
                    )
                ),
            ],
          ),
        ),
      ),
    );
  }

 Widget customListTile(Subject_model subject, BuildContext context) {
  return  InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Subject(
           subject_items: subject,
          ),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFB3E5FC),
        ),
        child: ListTile(
          contentPadding:
          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                      new BorderSide(width: 1.0, color: Colors.white24))),
              child: Text(
                subject.Reg,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
          title: Row(children: [
            Text(
              subject.event,
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 200,
            ),
            Container(
              alignment: Alignment.topRight,

              child: Text(
                subject.date,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ]),
          subtitle: Row(
            children: [
              Text(
                subject.hazard,
                  style: TextStyle(
                    color: Colors.black,
                  )),
              SizedBox(
                width: 220,
              ),
              Text(
                subject.location,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Subject(
                  subject_items: subject,
                )),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
  }
}


