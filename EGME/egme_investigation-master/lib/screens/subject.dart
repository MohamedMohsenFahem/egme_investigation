import 'package:egme_investigation/screens/egme/Subject_model.dart';
import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  late final Subject_model subject_items ;
  Subject ({required this.subject_items});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlue[50],
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${subject_items.event}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Date: ${subject_items.date}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  '${subject_items.location}:Location',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Summary',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:  Color(0xFFAFE1F5),
                  ),
                  child: Text(
                    subject_items.summary,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Rod Cause',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:  Color(0xFFAFE1F5),
                  ),
                  child: Text(
                    subject_items.Rod_couse,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Hazard',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:  Color(0xFFAFE1F5),
                  ),
                  child: Text(
                    subject_items.hazard,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Risk index',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:  Color(0xFFAFE1F5),
                  ),
                  child: Text(
                    subject_items.risk_index,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Reason',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:  Color(0xFFAFE1F5),
                  ),
                  child: Text(
                    subject_items.reason,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF68BADB),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Recommendation',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color:  Color(0xFFAFE1F5),
                  ),
                  child: Text(
                    subject_items.recommendation,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
