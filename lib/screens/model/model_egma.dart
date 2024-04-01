import 'package:egme_investigation/screens/subject.dart';
import 'package:flutter/material.dart';

class Subject_Items extends StatefulWidget {
  Subject_Items({super.key, });

  @override
  State<Subject_Items> createState() => _Subject_ItemsState({});
}

class _Subject_ItemsState extends State<Subject_Items> {
  final _Subject item;

  _Subject_ItemsState(this.item);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFB3E5FC),
        ),
        child: ListTile(
          onTap: () {
            Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (context) => Subject()),
            );
          },
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Text(
                item.Reg,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
          title: Row(children: [
            Text(
              "Pack #1 LT Illuminate",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              '3/18/2024',
              style: TextStyle(color: Colors.black),
            ),
          ]),
          subtitle: Row(
            children: [
              Text(" Not Found by Inspection",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              SizedBox(
                width: 80,
              ),
              Text(
                'CAI',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context as BuildContext,
                MaterialPageRoute(builder: (context) => Subject()),
              );
            },
            icon: Icon(Icons.keyboard_arrow_right),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class _Subject {
  final String event;
  final String Reg;
  final String summary;
  final String Rod_couse;
  final String hazard;
  final String risk_index;
  final int reason;
  final String location;
  final int recommendation;

  _Subject(this.event, this.Reg, this.summary, this.hazard, this.location,
      this.reason, this.recommendation, this.risk_index, this.Rod_couse);
}
