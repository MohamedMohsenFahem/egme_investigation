import 'package:egme_investigation/screens/egme/Subject_model.dart';
import 'package:flutter/material.dart';

import '../Subject.dart';

class Other_Customer extends StatefulWidget {
  Other_Customer({super.key, });

  @override
  State<Other_Customer> createState() => _Other_CustomerState();
}

class _Other_CustomerState extends State<Other_Customer> {
  List<Subject_model>? subject = [
    Subject_model(
      date: '6/1/2024',
      event:
      'إكتشاف تآكل فى Damage in Eng. #2 Outboard Heat Shield of C-Duct  ',
      hazard: 'Maintenance Activity Error (Installation Error)   ',
      location: 'الكشف الأسبوعى ',
      reason:
      '1- من المرجح بأن سبب الواقعة يرجع نتيجة عدم الربط الجيد للـ  Unionخاص بماسورة Sensing Line Air المتصل بصمام PRV مما أدى إلى حدوث خروج هواء ساخن من خلالها أدى إلى تآكل الطبقة العازلة لــ C-duct  R-Sleeveالمحرك رقم (2) ',
      recommendation:
      '1-نشر الواقعة على السادة المهندسين / الفنيين بالصيانة اليومية / الدورية للتوعية بها.'
          '\n2--	التنبية على السادة المهندسين / الفنيين بالتفتيش الجيد على المحرك وكذلك الأجزاء التى يتم فكها عند تغيير Fuel Nozzle لتفادى تكرار مثل هذه الواقعة مستقبلا.'
          '\n3--	الصيانة اليومية الإلتزام على ما جاء فىLPM  من متابعة العيوب فى أول رحلة بعد أى كشف من الهنجر.'
          '\nLPM-LM-Ramp-05 A/C Acceptance between BM & LM'
          '\n4-دراسة إدراج الـTask of Removal & Installation of Full Set of Main Fuel Nozzle على أنهRII Task  ',
      Reg: 'GFL',
      risk_index: '3C',
      Rod_couse:
      'من المرجح بأن سبب الواقعة يرجع نتيجة عدم الربط الجيد للـ  Unionخاص بماسورة Sensing Line Air المتصل بصمام PRV مما أدى إلى حدوث خروج هواء ساخن من خلالها أدى إلى تآكل الطبقة العازلة لــ C-duct  R-Sleeveالمحرك رقم (2) ـ ',
      summary:
      '1-	عند تنفيذ W.O (Eng. #2 HPTACC Inspection) الخاص بتغيير Eng. #2 Fuel Nozzle فى الكشف الأسبوعى للطائرة إكتشف مهندس الطائرة عن وجود تآكل فىDamage in Eng. #2 R.H.S Outboard Heat Shield of C-Duct وبالتالى قام بتحرير تقرير البلاغ رقم (Occ. # 2110).',
    ),
    Subject_model(
      date: ' ',
      event: 'go',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'want',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'here',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'here',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'go',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'went',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'want',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'because',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
    ),
    Subject_model(
      date: ' ',
      event: 'ok',
      hazard: '',
      location: '',
      reason: '',
      recommendation: '',
      Reg: 'GOLF',
      risk_index: '',
      Rod_couse: '',
      summary: '',
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
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Reg.',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
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


