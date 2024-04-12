import 'package:egme_investigation/screens/Subject/Subject_Model.dart';
import 'package:egme_investigation/screens/Subject/addSubject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Subject/subject.dart';

class EGME extends StatefulWidget {
  EGME({
    super.key,
  });

  @override
  State<EGME> createState() => _EGMEState();
}

List<String> listReg = <String>[
  'Reg',
  'SU-GDL',
  'SU-GDM',
  'SU-GDN',
  'SU-GDO',
  'SU-GDP',
  'SU-GDR',
  'SU-GER',
  'SU-GES',
  'SU-GET',
  'SU-GEU',
  'SU-GEV',
  'SU-GEW',
  'SU-GFX',
  'SU-GDS',
  'SU-GDT',
  'SU-GDU',
  'SU-GDV',
  'SU-GCG',
  'SU-GCH',
  'SU-GCI',
  'SU-GCK',
  'SU-GAS',
  'SU-GCE',
  'SU-GCF',
  'SU-GCJ',
  'SU-GCP',
  'SU-GCM',
  'SU-GCN',
  'SU-GCO',
  'SU-GCR',
  'SU-GCS',
  'SU-GCZ',
  'SU-GDA',
  'SU-GDB',
  'SU-GDC',
  'SU-GDD',
  'SU-GDE',
  'SU-GDX',
  'SU-GDY',
  'SU-GDZ',
  'SU-GEA',
  'SU-GEB',
  'SU-GEC',
  'SU-GED',
  'SU-GEE',
  'SU-GEF',
  'SU-GEG',
  'SU-GEH',
  'SU-GEI',
  'SU-GEJ',
  'SU-GEK',
  'SU-GEL',
  'SU-GEM',
  'SU-GEN',
  'SU-GEX',
  'SU-GEY',
  'SU-GEZ',
  'SU-GFA',
  'SU-GFB',
  'SU-GFC',
  'SU-GFD',
  'SU-GFE',
  'SU-GFF',
  'SU-GFG',
  'SU-GFH',
  'SU-GFI',
  'SU-GFJ',
  'SU-GFK',
  'SU-GFL',
  'SU-GFM',
  'SU-GFN',
  'SU-GFO',
  'SU-GFP',
  'SU-GFQ',
  'SU-GFR',
  'SU-GFS',
  'SU-GFT',
  'SU-GFU',
  'SU-GFV',
  'SU-GFW',
  'SU-GBZ',
  'SU-GCA',
  'SU-GCB',
  'SU-GCD',
  'SU-GBR',
  'SU-GBS',
  'SU-GEO',
  'SU-GEP',
  'SU-GDH',
  'SU-GDJ',
  'SU-GDK'
];
List<String> listLocation = <String>[
  'Location',
  'Line shifts',
  ' Weeky check',
  'Tech.support',
  'Line jcc',
  ' Mcc',
  'Bm H6000',
  'BM H7000',
  'BM H8000',
  'ENGINE SHOP',
  'MECH.SHOP',
  'ELECT .SHOP',
  ' BRAKE. SHOP',
  'IERA SHOPS',
  'Atic shop',
  'Stores',
  'Incoming inspection',
  'Logistics',
  'Repair and warranty',
  'Came',
  'Tech.services',
  'Safety',
  'Quality',
];

class _EGMEState extends State<EGME> {
  List<Subject_model>? subject = [
    Subject_model(
      date: '6/1/2024',
      event:
          'إكتشاف تآكل فى Damage in Eng. #2 Outboard Heat Shield of C-Duct  ',
      hazard: 'Maintenance Activity Error (Installation Error)   ',
      location: 'الكشف الأسبوعى ',
      recommendation:
          '1-نشر الواقعة على السادة المهندسين / الفنيين بالصيانة اليومية / الدورية للتوعية بها.'
          '\n2--	التنبية على السادة المهندسين / الفنيين بالتفتيش الجيد على المحرك وكذلك الأجزاء التى يتم فكها عند تغيير Fuel Nozzle لتفادى تكرار مثل هذه الواقعة مستقبلا.'
          '\n3--	الصيانة اليومية الإلتزام على ما جاء فىLPM  من متابعة العيوب فى أول رحلة بعد أى كشف من الهنجر.'
          '\nLPM-LM-Ramp-05 A/C Acceptance between BM & LM'
          '\n4-دراسة إدراج الـTask of Removal & Installation of Full Set of Main Fuel Nozzle على أنهRII Task  ',
      Reg: 'SU-GFL',
      risk_index: '3C',
      Rod_couse:
          'من المرجح بأن سبب الواقعة يرجع نتيجة عدم الربط الجيد للـ  Unionخاص بماسورة Sensing Line Air المتصل بصمام PRV مما أدى إلى حدوث خروج هواء ساخن من خلالها أدى إلى تآكل الطبقة العازلة لــ C-duct  R-Sleeveالمحرك رقم (2) ـ ',
      summary:
          'عند تنفيذ W.O (Eng. #2 HPTACC Inspection) الخاص بتغيير Eng. #2 Fuel Nozzle فى الكشف الأسبوعى للطائرة إكتشف مهندس الطائرة عن وجود تآكل فىDamage in Eng. #2 R.H.S Outboard Heat Shield of C-Duct وبالتالى قام بتحرير تقرير البلاغ رقم (Occ. # 2110).',
    ),
    Subject_model(
      date: '3/2/2024',
      event: 'MLG Wheel #2 Low Pressure',
      hazard: 'Maintenance Data Not Followed',
      location: 'عودة رحلة شرم الشيخ',
      recommendation: '1.	MOE 2-16 Release to Service Procedure'
          '\n2.	line maintenance check (Transit/Pre-flight)'
          '\n3.	AMM Task Card 12-15-51/301'
          '\n4.	AMM Task Card 32-45-00/601',
      Reg: 'SU-GEL',
      risk_index: '3D',
      Rod_couse:
          '1.	يتضح مما سبق من الأقوال والتحليل بأن هناك خطأ صادر من المهندس بتوقيع صلاحية للطائرة دون التأكد والكشف على ضغط العجلة نتيجة إستعجال منه .'
          ' \n2.	هناك تقصير من المهندس فى تنفيذ بنود Transit/Pre-flight.',
      summary:
          '\n1-	بخصوص التقرير التطوعى الوارد إلى الإدارة العامة لسلامة الصيانة رقم (AMOS # 2120) عن الطائرة طراز '
          '\nB737-800 حروف تسجيل SU-GEL عودة رحلة شرم الشيخ وتجهيزها للإقلاع لرحلة جدة بتاريخ 3/2/2024.',
    ),
    Subject_model(
      date: '20/2/2024 ',
      event: 'Eng. No.2 T/R Deactivation',
      hazard: 'Workplace distractions / interruptions during task performance ',
      location: 'in',
      recommendation:
          'إتخاذ اللازم نحو التنبيه على السادة مديرى النوبات بضرورة مراعاة الـ Work Load لمهندسى النوبة عند العمل على رفع العيوب المؤجلة وأعمال النوبة الأخرى.',
      Reg: 'SU-GEA',
      risk_index: '1D',
      Rod_couse:
          '1.	عدم التركيز والتشتت أثناء تنفيذ الـ  Taskكونه كان موزع على رفع العيب المؤجل بالإضافة إلى طائرات أخرى فى نفس التوقيت وفى نهاية النوبة الليلية.'
          '\n-	Workplace Distractions / Interruptions During Task Performance',
      summary:
          'بخصوص تكليف سيادتكم بالتحقيق فى واقعة الطائرة طراز B737-800 حروف تسجيل SU-GEL عن عدم تحرى الدقة أثناء تنفيذ Task Eng. No. 2 T/R Deactivation بتاريخ 20/02/2024.',
    ),
    Subject_model(
      date: '7/2/2024',
      event:
          'During A/C Jigging Damage Occurred to Aft Fuselage Safety Stay Area',
      hazard: 'Tools/equipment used improperly',
      location: 'بهنجر 8000',
      Rod_couse:
          '1.	قيام طاقم الفنيين بتقريب الـ Safety Jack إلى جسم الطائرة على الرغم من أن Safety Jack أخر مرحلة لتأمين الطائرة.'
          '\n2.	عدم وجود إشراف من المهندس المسئول أو رئيس مجموعة الفنيين أثناء عملية الرفع وعدم الإنتباه إلى الوضع لخاطئ للـ Safety Jack أسفل الطائرة بسبب إنشغالهم فقط في مراقبة الموازين في منطقة الـ Wheel Well وساعد على ذلك قلة خبرة المهندس وعدم إستخدام الـ ADIRS بضبط الطائرة أثناء عملية الرفع.'
          '\n3.	مخالفة الـ AMM الخاص برفع الطائرة وإستخدام Tools غير منصوص عليها فى الـ AMM وإستخدام Protractor Digital بدلاً من Spirit Level. (Maintenance Data Not Followed)'
          '\n4.	أعتاد الفنيين والمهندسين بالهنجر إستخدامProtractor   Digitalبدلاً من Spirit Le29.1.2024vel بالمخالفة الصريحة للـ AMM وهذا يصنف Routine Violation',
      recommendation:
          '•	عمل توعية للسادة المهندسين ورؤساء مجموعة العربة السفلى والفنيين للإنتباه إلى خطورة وضع الـ Safety Jack أسفل الطائرة قبل وأثناء عملية رفع الطائرة وضرورة إبعاده تمامًا وعدم إستخدامه إلا بعد تمام عملية الرفع.'
          '\n•	عمل توعية Awareness للسادة مديرى الهناجر عند توزيع المهندسين على الطائرة عامل الخبرة فى Tasks التى تحتاج إلى الخبرة أثناء التنفيذ.'
          '\n•	التنبيه المشدد على السادة المهندسين بعدم إستخدامDigital Protractor بديلا عن Spirit Leve .'
          '\n•	التنسيق مع الإدارة العامة للعدد والآلات بسرعة تموين Spirit Level'
          '\n•	دراسة وضع الكارت RII A/C Jacking للمهندسين لأهمية خطورة هذا الكارتRISK 2B'
          '\n•	التنسيق مع مدير عام الصيانات الدورية يسرعة تموين مخزن العدة بهنجر 8000(T05)  بالـ Spirit Level P/N'
          '\n•	لإدراج A/C Jacking RII ودراسة تحديث الـ 223 List.'
          '\n•	إصدار Safety Bulletin بإستخدام Spirit Level وعدم إستخدام Protractor Digital بديلاً كما جاء فىAMM ومراسلة .Airbus',
      Reg: 'SU-GDV',
      risk_index: '2B',
      summary:
          'بخصوص حدوث During A/C Jigging Damage Occurred to Aft Fuselage Safety Stay Area على الطائرة طراز A330-300 حروف تسجيل SU-GDV بتاريخ 7/2/2024 بهنجر 8000 .',
    ),
  ];
  List<Subject_model>? _foundSubject = [];
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
      _foundSubject = subject
          ?.where((user) => user.location
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: Text('EGME'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.black),
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Date',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            style: BorderStyle.solid,
                            width: 1.0,
                            color: Colors.black),
                      ),
                    ),
                    child: DropdownButton<String>(
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
                      items:
                          listReg.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            style: BorderStyle.solid,
                            width: 1.0,
                            color: Colors.black),
                      ),
                    ),
                    child: TextButton(
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
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            style: BorderStyle.solid,
                            width: 1.0,
                            color: Colors.black),
                      ),
                    ),
                    child: TextButton(
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
                  ),
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
                        _runFilterLocation(value);
                      });
                    },
                    items: listLocation
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            if (_showSearchHazard)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  shape: BoxShape.rectangle,
                ),
                child:  Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text.isEmpty) {
                      // If the text field is empty, return an empty list
                      return Iterable<String>.empty();
                    } else {
                      // Filter suggestions based on the entered text
                      return _suggestions.where((String item) {
                        // Convert both the item and the entered text to lowercase for case-insensitive matching
                        return item.toLowerCase().contains(textEditingValue.text.toLowerCase());
                      });
                    }
                  },
                  onSelected:  (String item) {
                    // This function should handle what happens when an item is selected from the Autocomplete suggestions
                    // Make sure it is correctly linked and triggers the necessary state changes or actions
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
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _foundSubject?.length,
                itemBuilder: (context, index) =>
                    customListTile(_foundSubject![index], context),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddSubject(),
            ),
          );
        },
        focusColor: Colors.lightBlue,
        child: Icon(
          Icons.add_circle_outlined,
          size: 40,
          color: Colors.black,
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
                    left: BorderSide(
                      style: BorderStyle.solid,
                        width: 1.0,
                        color: Colors.black),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Text(
                    subject.Reg,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    subject.event,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subject.date,
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
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
