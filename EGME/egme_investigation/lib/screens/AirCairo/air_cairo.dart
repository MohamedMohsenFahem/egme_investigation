import 'package:flutter/material.dart';
import '../Subject_model.dart';
import '../subject.dart';


class AirCairo extends StatefulWidget {
  AirCairo({super.key});

  @override
  State<AirCairo> createState() => _AirCairoState();
}
List<String> listReg = <String>[
  'SU-BPU', 'SU-BPV', 'SU-BPW', 'SU-BPX', 'SU-BTM', 'SU-BUJ', 'SU-BUU',
  'SU-BUV', 'SU-BVG', 'SU-BVH', 'SU-BVI', 'SU-BUK', 'SU-BUL', 'SU-BUM',
  'SU-BUN', 'SU-BUP', 'SU-BUQ', 'SU-BUR', 'SU-BUS', 'SU-BUT', 'SU-BUX',
  'SU-BUY', 'SU-BUZ', 'SU-BUJ', 'SU-BUK'
];
List<String> listLocation = <String>[
  'الكشف الأسبوعى',
  'عودة رحلة شرم الشيخ وتجهيزها للإقلاع لرحلة جدة',
  'بهنجر 8000',
];
class _AirCairoState extends State<AirCairo> {
  List<Subject_model>? subject = [
    Subject_model(
      date: '10/2/2024',
      event: 'عودة الطائرة من الجو بعد الطيران لظهور العيوب',
      hazard: '',
      location: 'out',
       Rod_couse: 'من المرجح أن سبب الواقعة عدم تنفيذ إجراءات MEL 36-11-07B OPS PROC.  والخاص بـ'
      '\nEng. # 2 Bleed & Eng. # 2 HP Valve طبقا للـ DFDR  والذى تم تحليله بواسطة Airbus  .'
      '\n-  عدم الإكتشاف المبكر لوجودLoose   للـ Sense Line بين HPV & PRV  .',
      recommendation: 'نشر الواقعة على السادة المهندسين بالصيانة اليومية / الدورية للتوعية بها.'
      '\nمقترح خطاب للرد على شركة AirCairo.',
      Reg: 'BUN',
      risk_index: '',
      summary: '•	الطائرة طرازA320Neo حروف تسجيل SU-BUN عند تنفيذ رحلتها المخططة القاهرة / جدة الرحلة رقم MSC459 بتاريخ 10/2/2024 عودة الطائرة من الجو بعد الطيران لظهور العيوب التالية بالطائرة: '
          '\n-	Eng. Bleed 1&2 Fault.'
          '\n-	Eng. # 2 HP Valve Fault.'
          '\n-	Bleed # 1 not Supplying in Flight.'
          '\nعلمًا بأن نفس الطائرة قد تم عودتها إلى الموقع بعد الدفع الخلفى لنفس الرحلة لوجود نفس العيب وقد تم إجراء تصحيحى بعمل Rest لكمبيوتر Bleed Monitoring Computer (BMC) 1&2.',
    ),

  ];
  List<Subject_model>? _foundSubject;
  bool _showSearchSubject = false;
  bool _showSearchHazard = false;
  late String HazardSearch;
  String searchValue = '';
  final List<String> _suggestions = [
    'Equipment/part not installed',
    'Wrong equipment/part installed',
    'Wrong orientation',
    'Improper location',
    'Incomplete installation',
    'Extra parts installed',
    'Access not closed',
    'System/equipment not deactivated /reactivated',
    'Damaged on installation',
    'Cross connection',
    'Not enough fluid',
    'Too much fluid',
    'Wrong fluid type',
    'Required servicing not performed',
    'Access not closed',
    'System/equipment notdeactivated/reactivated',
    'Unapproved Repair',
    'Incomplete Repair',
    'Incorrect Repair',
    'Did not detect fault',
    'Not found by fault isolation',
    'Not found by operational/functional test',
    'Not found by inspection',
    'Access not closed',
    'System/equipment not deactivated /reactivated',
    'MEL interpretation/application/removal',
    'CDL interpretation/application/removal',
    'Incorrectly deferred/controlled defect',
    'Technical(aircraft) log use and oversight',
    'Maintenance (Mx) task not correctly documented',
    'Not authorized/qualified/certified to do task',
    'Material / Tools left in aircraft/engine',
    'Debris on ramp',
    'Debris falling into open systems',
    'Tools/equipment used improperly',
    'Defective tools/equipment used',
    'Struck by/against',
    'Pulled/pushed/drove into',
    'Using GSE without proper approval',
    'Slip/trip/fall',
    'Caught in/on/between',
    'Struck by/against',
    'Hazard contacted (e.g., electricity, hot or cold surfaces, and sharp surfaces)',
    'Hazardous substance exposure (e.g.,toxic or noxious substances)',
    'Hazardous thermal environment exposure(heat,cold, or humidity)',
    'Exceeding legal extra hours',
    'Pandemic',
    'Rain storm',
    'Sand storm',
    'Lightning storm',
    'FOG',
    'A/C Maintenance Program Control error',
    'Wrong / Incomplete / late reply to a technical query',
    'TCI Monitoring error',
    'OVER DUE AD/ROUTINE TASK',
    'Information with ambiguities',
    'Scheduled task omitted/late/incorrect',
    'Airworthiness data interpretation',
    'Airworthiness Directive overrun',
    'Modification control',
    'Configuration control',
    'Records control',
    'Component robbery control',
    'Maintenance (Mx) information system (entry or update)',
    'Time expired part on board aircraft',
    'Part defected during handling',
    'Zero hours part',
    'Part stored under wrong PN',
    'Report not received within specified period',
    'Report not delivered to authority within specified period',
    'Poor Generic / Specific hazard identified',
    'Poor Risk index identified',
    'Wrong report category identified',
    'Poor/complicated reportig system',
    'Wrong / incomplete root cause identified',
    'Wrong / incomplete recommendations',
    'Wrong identification of Spacific Hazard type',
    'Inaccurate or incomplete risk assessments',
    'Failure to consider the dynamic nature of operational environments when assessing risks.',
    'Inconsistent criteria for assessing the severityand Probabilty of identified risks.',
    'Inadequate monitoring of safety performance indicators.',
    'Inaccurate or delayed reporting of safety performance indicators.',
    'Lack of feedback loops to assess the effectiveness of safety assurance activities.',
    'Failure to adapt safety assurance processes in response to changes in operations orregulations.',
    'Insufficient data analysis tools to identifyemerging trends.',
    'Wrong analysis for Data Base',
    'No/Poor monitor for safety actions',
  ];
  String dropdownValueReg = listReg.first;
  String dropdownValueLocation = listLocation.first;
  @override
  void initState() {
    _foundSubject = subject;
    super.initState();
  }

  void _runFilterHazard(String enteredKeyword) {
    List<Subject_model>? results = [];
    if (enteredKeyword.isEmpty) {
      results = subject;
    } else {
      results = subject
          ?.where((user) =>
          user.hazard.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundSubject = results;
    });
  }

  void _runFilterSubject(String enteredKeyword) {
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

  void _runFilterReg(String enteredKeyword) {
    setState(() {
      if (enteredKeyword.isEmpty) {
        _foundSubject = subject;
      } else {
        _foundSubject = subject
            ?.where((user) =>
            user.Reg.toLowerCase().contains(enteredKeyword.toLowerCase()))
            .toList();
      }
    });
  }
  void _runFilterLocation(String enteredKeyword) {
    setState(() {
      if (enteredKeyword.isEmpty) {
        _foundSubject = subject;
      } else {
        _foundSubject = subject
            ?.where((user) =>
            user.location.toLowerCase().contains(enteredKeyword.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.lightBlue[50],
          title: Text('Air Cairo'),
          bottom: TabBar(tabs: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Date',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                DropdownButton<String>(
                  value: dropdownValueReg,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 5,
                    width: 50,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValueReg = value!;
                      _runFilterReg(value);
                    });
                  },
                  items: listReg.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _showSearchHazard = false;
                        _showSearchSubject =
                        !_showSearchSubject; // Toggle the search bar visibility
                      });
                    },
                    child: Text(
                      'Subject',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _showSearchSubject = false;
                        _showSearchHazard =
                        !_showSearchHazard; // Toggle the search bar visibility
                      });
                    },
                    child: Text(
                      'Hazard',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                DropdownButton<String>(
                  value: dropdownValueLocation,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 5,
                    width: 50,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValueLocation = value!;
                    });
                  },
                  items: listLocation.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (_showSearchHazard)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      shape: BoxShape.rectangle,
                    ),
                    child: Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text == '') {
                          return Iterable<String>.empty();
                        }
                        return _suggestions.where((String item) {
                          return item
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      onSelected: (String item) {
                        _runFilterHazard(item);
                      },
                    ),
                  ),
                if (_showSearchSubject)
                  Container(
                    alignment: AlignmentDirectional.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      onChanged: (value) => _runFilterSubject(value),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelText: 'Search By Subject',
                          suffixIcon: Icon(Icons.search)),
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
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 1.0, color: Colors.white24),
                  ),
                ),
                child: Text(
                  subject.Reg,
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
}

