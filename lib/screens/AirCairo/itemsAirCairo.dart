import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:egme_investigation/screens/AirCairo/air_cairo.dart';
import 'package:egme_investigation/screens/egme/add_subjectEGME.dart';
import 'package:egme_investigation/screens/subject/Subject_model.dart';
import 'package:egme_investigation/screens/subject/subject.dart';

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
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                Text(
                  subject.event,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subject.date,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  subject.location,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
            subtitle: Text(
              subject.hazard,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.edit),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      await FirebaseFirestore.instance
                          .collection('SubjectAirCairo')
                          .doc(subject.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Field deleted successfully')),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to delete field: $e')),
                      );
                    }
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.black,
                ),
                IconButton(
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
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
