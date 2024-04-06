import 'package:egme_investigation/screens/Subject_model.dart';
import 'package:egme_investigation/screens/egme/searchByLocationEGME.dart';
import 'package:egme_investigation/screens/egme/searchByRegEGME.dart';
import 'package:flutter/material.dart';

import '../subject.dart';
class EGME extends StatefulWidget {
  EGME({
    super.key,
  });

  @override
  State<EGME> createState() => _EGMEState();
}

class _EGMEState extends State<EGME> {
  List<Subject_model>? subject = [
    Subject_model(
      date: '6/1/2024',
      event:
          'إكتشاف تآكل فى Damage in Eng. #2 Outboard Heat Shield of C-Duct  ',
      hazard: 'Maintenance Activity Error (Installation Error)   ',
      location: 'الكشف الأسبوعى ',
      reason:
          ' من المرجح بأن سبب الواقعة يرجع نتيجة عدم الربط الجيد للـ  Unionخاص بماسورة Sensing Line Air المتصل بصمام PRV مما أدى إلى حدوث خروج هواء ساخن من خلالها أدى إلى تآكل الطبقة العازلة لــ C-duct  R-Sleeveالمحرك رقم (2) ',
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
          'عند تنفيذ W.O (Eng. #2 HPTACC Inspection) الخاص بتغيير Eng. #2 Fuel Nozzle فى الكشف الأسبوعى للطائرة إكتشف مهندس الطائرة عن وجود تآكل فىDamage in Eng. #2 R.H.S Outboard Heat Shield of C-Duct وبالتالى قام بتحرير تقرير البلاغ رقم (Occ. # 2110).',
    ),
    Subject_model(
      date: '3/2/2024',
      event: 'MLG Wheel #2 Low Pressure',
      hazard: 'Maintenance Data Not Followed',
      location: 'عودة رحلة شرم الشيخ وتجهيزها للإقلاع لرحلة جدة ',

      reason: '1.	يتضح مما سبق من الأقوال والتحليل بأن هناك خطأ صادر من المهندس بتوقيع صلاحية للطائرة دون التأكد والكشف على ضغط العجلة نتيجة إستعجال منه .'
          '\n 2.	هناك تقصير من المهندس فى تنفيذ بنود Transit/Pre-flight.',

      recommendation: '1.	MOE 2-16 Release to Service Procedure'
    '\n2.	line maintenance check (Transit/Pre-flight)'
    '\n3.	AMM Task Card 12-15-51/301'
      '\n4.	AMM Task Card 32-45-00/601',

      Reg: 'GEL',
      risk_index: '3D',
      Rod_couse: '1.	يتضح مما سبق من الأقوال والتحليل بأن هناك خطأ صادر من المهندس بتوقيع صلاحية للطائرة دون التأكد والكشف على ضغط العجلة نتيجة إستعجال منه .'
          ' \n2.	هناك تقصير من المهندس فى تنفيذ بنود Transit/Pre-flight.',

      summary: '\n1-	بخصوص التقرير التطوعى الوارد إلى الإدارة العامة لسلامة الصيانة رقم (AMOS # 2120) عن الطائرة طراز '
          '\nB737-800 حروف تسجيل SU-GEL عودة رحلة شرم الشيخ وتجهيزها للإقلاع لرحلة جدة بتاريخ 3/2/2024.',
    ),
    Subject_model(
      date: '20/2/2024 ',
      event: 'Eng. No.2 T/R Deactivation',
      hazard: 'Workplace distractions / interruptions during task performance ',
      location: '',
      reason: '1.	عدم التركيز والتشتت أثناء تنفيذ الـ  Taskكونه كان موزع على رفع العيب المؤجل بالإضافة إلى طائرات أخرى فى نفس التوقيت وفى نهاية النوبة الليلية.'
          '\n-	Workplace Distractions / Interruptions During Task Performance',

      recommendation: 'إتخاذ اللازم نحو التنبيه على السادة مديرى النوبات بضرورة مراعاة الـ Work Load لمهندسى النوبة عند العمل على رفع العيوب المؤجلة وأعمال النوبة الأخرى.',

      Reg: 'GEA',
      risk_index: '1D',
      Rod_couse: '1.	عدم التركيز والتشتت أثناء تنفيذ الـ  Taskكونه كان موزع على رفع العيب المؤجل بالإضافة إلى طائرات أخرى فى نفس التوقيت وفى نهاية النوبة الليلية.'
          '\n-	Workplace Distractions / Interruptions During Task Performance',

      summary: 'بخصوص تكليف سيادتكم بالتحقيق فى واقعة الطائرة طراز B737-800 حروف تسجيل SU-GEL عن عدم تحرى الدقة أثناء تنفيذ Task Eng. No. 2 T/R Deactivation بتاريخ 20/02/2024.',
    ),
    Subject_model(
      date: '7/2/2024',
      event: 'During A/C Jigging Damage Occurred to Aft Fuselage Safety Stay Area',
      hazard: 'Tools/Equipment/Used Improperly',
      location: 'بهنجر 8000',
      reason: '1.	قيام طاقم الفنيين بتقريب الـ Safety Jack إلى جسم الطائرة على الرغم من أن Safety Jack أخر مرحلة لتأمين الطائرة.'
              '\n2.	عدم وجود إشراف من المهندس المسئول أو رئيس مجموعة الفنيين أثناء عملية الرفع وعدم الإنتباه إلى الوضع لخاطئ للـ Safety Jack أسفل الطائرة بسبب إنشغالهم فقط في مراقبة الموازين في منطقة الـ Wheel Well وساعد على ذلك قلة خبرة المهندس وعدم إستخدام الـ ADIRS بضبط الطائرة أثناء عملية الرفع.'
              '\n3.	مخالفة الـ AMM الخاص برفع الطائرة وإستخدام Tools غير منصوص عليها فى الـ AMM وإستخدام Protractor Digital بدلاً من Spirit Level. (Maintenance Data Not Followed)'
              '\n4.	أعتاد الفنيين والمهندسين بالهنجر إستخدامProtractor   Digitalبدلاً من Spirit Le29.1.2024vel بالمخالفة الصريحة للـ AMM وهذا يصنف Routine Violation',

      recommendation: '•	عمل توعية للسادة المهندسين ورؤساء مجموعة العربة السفلى والفنيين للإنتباه إلى خطورة وضع الـ Safety Jack أسفل الطائرة قبل وأثناء عملية رفع الطائرة وضرورة إبعاده تمامًا وعدم إستخدامه إلا بعد تمام عملية الرفع.'
                    '\n•	عمل توعية Awareness للسادة مديرى الهناجر عند توزيع المهندسين على الطائرة عامل الخبرة فى Tasks التى تحتاج إلى الخبرة أثناء التنفيذ.'
                    '\n•	التنبيه المشدد على السادة المهندسين بعدم إستخدامDigital Protractor بديلا عن Spirit Leve .'
                    '\n•	التنسيق مع الإدارة العامة للعدد والآلات بسرعة تموين Spirit Level'
                    '\n•	دراسة وضع الكارت RII A/C Jacking للمهندسين لأهمية خطورة هذا الكارتRISK 2B'
                    '\n•	التنسيق مع مدير عام الصيانات الدورية يسرعة تموين مخزن العدة بهنجر 8000(T05)  بالـ Spirit Level P/N'
                    '\n•	لإدراج A/C Jacking RII ودراسة تحديث الـ 223 List.'
                    '\n•	إصدار Safety Bulletin بإستخدام Spirit Level وعدم إستخدام Protractor Digital بديلاً كما جاء فىAMM ومراسلة .Airbus',
      Reg: 'GDV',
      risk_index: '2B',
      Rod_couse: '',
      summary: 'بخصوص حدوث During A/C Jigging Damage Occurred to Aft Fuselage Safety Stay Area على الطائرة طراز A330-300 حروف تسجيل SU-GDV بتاريخ 7/2/2024 بهنجر 8000 .',
    ),


  ];
  List<Subject_model>? _foundSubject = [];
  bool _showSearchSubject = false;
  bool _showSearchHazard = false;
  bool _showDropMenuReg = false;
  bool _showDropMenuLocation = false;

  @override
  void initState() {
    _foundSubject = subject;
    super.initState();
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
  void _runHazardFilter(String enteredKeyword) {
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
    @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[50],
        title: Text('EGME'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (_showSearchHazard)
                Container(
                  alignment: AlignmentDirectional.topCenter,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    shape: BoxShape.rectangle
                  ),
                  child: TextField(

                    onChanged: (value) => _runHazardFilter(value),
                    decoration: const InputDecoration(
                        labelText: 'Search By Hazard',
                        suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              if (_showSearchSubject)
                Container(
                  alignment: AlignmentDirectional.topCenter,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                  ),
                  child: TextField(
                    onChanged: (value) => _runFilterSubject(value),
                    decoration: const InputDecoration(
                        labelText: 'Search By Subject',
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
      ),
      bottomNavigationBar: Container(
        alignment: AlignmentDirectional.centerStart,
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
              DropdownReg(subject:subject,),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _showSearchHazard =false;
                      _showDropMenuReg=false;
                      _showSearchSubject = !_showSearchSubject; // Toggle the search bar visibility
                    });
                  },
                  child: Text(
                    'Subject',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _showSearchSubject =false;
                      _showDropMenuReg=false;
                      _showSearchHazard =
                      !_showSearchHazard; // Toggle the search bar visibility
                    });
                  },
                  child: Text(
                    'Hazard',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              DropdownLocation(),
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
