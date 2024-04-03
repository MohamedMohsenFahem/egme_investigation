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
        color: Color(0xFFD5F7F6),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xFF659A9A),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Event name: ${subject_items.event}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Work at ${doctor.workAt}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xFF659A9A),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFF8BC0C0),
                ),
                child: Text(
                  doctor.description,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF8BC0C0),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Contact us: ',
                        selectionColor: Colors.teal,
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'phone number: ${doctor.number}',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Email: ${doctor.email}',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
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
