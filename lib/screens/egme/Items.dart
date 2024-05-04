import 'package:egme_investigation/screens/subject/Subject_model.dart';
import 'package:egme_investigation/screens/subject/subject.dart';
import 'package:flutter/material.dart';

Widget customListTile(Subject_model subject, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Subject(
            subject_items: subject,
          ),
        ),
      );
    },
    child: Directionality(
      textDirection: TextDirection.rtl,
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
            //Reg
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1.0, color: Colors.white24),
                ),
              ),
              child: Text(
                subject.reg,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Event
                Text(
                  subject.event,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //date
                Text(
                  subject.date,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                //Location
                Text(
                  subject.location,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
            //Hazard
            subtitle: Text(
              subject.hazard,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Subject(
                      subject_items: subject,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined),
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}