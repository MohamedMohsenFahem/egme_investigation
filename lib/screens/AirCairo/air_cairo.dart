import 'package:egme_investigation/screens/AirCairo/searchByRegAirCairo.dart';
import 'package:egme_investigation/screens/egme/model_egma.dart';
import 'package:flutter/material.dart';

import '../subject.dart';


class AirCairo extends StatefulWidget {
  AirCairo({super.key});

  @override
  State<AirCairo> createState() => _AirCairoState();
}

class _AirCairoState extends State<AirCairo> {
  List<Subject_model>? subject = [
    Subject_model(
      date: '10/2/2024',
      event: 'عودة الطائرة من الجو بعد الطيران لظهور العيوب',
      hazard: '',
      location: '',
      reason: 'من المرجح أن سبب الواقعة عدم تنفيذ إجراءات MEL 36-11-07B OPS PROC.  والخاص بـ'
      '\nEng. # 2 Bleed & Eng. # 2 HP Valve طبقا للـ DFDR  والذى تم تحليله بواسطة Airbus  .'
      '\n-  عدم الإكتشاف المبكر لوجودLoose   للـ Sense Line بين HPV & PRV  .',
      recommendation: 'نشر الواقعة على السادة المهندسين بالصيانة اليومية / الدورية للتوعية بها.'
      '\nمقترح خطاب للرد على شركة AirCairo.',
      Reg: 'BUN',
      risk_index: '',
      Rod_couse: '',
      summary: '•	الطائرة طرازA320Neo حروف تسجيل SU-BUN عند تنفيذ رحلتها المخططة القاهرة / جدة الرحلة رقم MSC459 بتاريخ 10/2/2024 عودة الطائرة من الجو بعد الطيران لظهور العيوب التالية بالطائرة: '
          '\n-	Eng. Bleed 1&2 Fault.'
          '\n-	Eng. # 2 HP Valve Fault.'
          '\n-	Bleed # 1 not Supplying in Flight.'
          '\nعلمًا بأن نفس الطائرة قد تم عودتها إلى الموقع بعد الدفع الخلفى لنفس الرحلة لوجود نفس العيب وقد تم إجراء تصحيحى بعمل Rest لكمبيوتر Bleed Monitoring Computer (BMC) 1&2.',
    ),

  ];

  List<Subject_model>? _foundSubject = [];

  bool _showSearchBar = false;

  @override
  void initState() {
    _foundSubject = subject;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Subject_model>? results = [];
    if (enteredKeyword.isEmpty) {
      results = subject;
    } else {
      results = subject
          ?.where((user) =>
          user.event.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundSubject = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[50],
        title: Text('EGME'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_showSearchBar)
              Container(
                alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50),
                ),
                child: TextField(
                  onChanged: (value) => _runFilter(value),
                  decoration: const InputDecoration(
                      labelText: 'Search',
                      suffixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _foundSubject?.length,
                  itemBuilder: (context, index) =>
                      customListTile(_foundSubject![index], context),
                )),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: Color(0xFF68BADB),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Date',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              DropdownRegAirCairo(subject: subject),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _showSearchBar =
                      !_showSearchBar; // Toggle the search bar visibility
                    });
                  },
                  child: Text(
                    'Subject',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Hazard',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Location',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }

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
                ),
              ),
              title: Directionality(
                textDirection: TextDirection.rtl,
                child: Center(
                  child: Row(children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      subject.event,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 300,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        subject.date,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ]),
                ),
              ),
              subtitle: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(subject.hazard,
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 500,
                    ),
                    Text(
                      subject.location,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subject(
                          subject_items: subject,
                        )),
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
}

