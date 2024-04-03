import 'package:egme_investigation/screens/egme/model_egma.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Event name : ${subject_items.event}',
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
                'Location: ${subject_items.location}',
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
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rod cause: ${subject_items.Rod_couse}',
                    selectionColor: Colors.teal,
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Hazard: ${subject_items.hazard}',
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Risk index: ${subject_items.risk_index}',
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Reason: ${subject_items.reason}',
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Recommendation: ${subject_items.recommendation}',
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
