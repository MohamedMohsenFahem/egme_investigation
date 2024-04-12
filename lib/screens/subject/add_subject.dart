import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egme_investigation/screens/Subject/Subject_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
List<String> listReg = <String>['Air Cairo Reg',
  'SU-BPU', 'SU-BPV', 'SU-BPW', 'SU-BPX', 'SU-BTM', 'SU-BUJ', 'SU-BUU',
  'SU-BUV', 'SU-BVG', 'SU-BVH', 'SU-BVI', 'SU-BUK', 'SU-BUL', 'SU-BUM',
  'SU-BUN', 'SU-BUP', 'SU-BUQ', 'SU-BUR', 'SU-BUS', 'SU-BUT', 'SU-BUX',
  'SU-BUY', 'SU-BUZ', 'SU-BUJ', 'SU-BUK', 'EGME Reg',
  'SU-GDL', 'SU-GDM',
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

class AddSubject extends StatefulWidget {
  const AddSubject({super.key});

  @override
  State<AddSubject> createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  final TextEditingController _eventController = TextEditingController();
  final TextEditingController _regController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  final TextEditingController _summaryController = TextEditingController();
  TextEditingController _HazardController = TextEditingController();
  final TextEditingController _riskIndexController = TextEditingController();
  final TextEditingController _rodCauseController = TextEditingController();
  final TextEditingController _recomendationController = TextEditingController();
  final _db = FirebaseFirestore.instance;
  bool _loading = false;
  bool _error = false;
  String texterror = '';
  String dropdownValueReg = listReg.first;
  String dropdownValueLocation = listLocation.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 20),
            TextField(
              controller: _eventController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Event',
                  labelText: 'Event'
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _summaryController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter summary',
                  labelText: 'Summary'
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all()
              ),
              child: Column(
                children: [
                  Text('Reg',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all()
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
                          _HazardController = value as TextEditingController;
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
                ],
              ),
            ),
            const SizedBox(height: 20),
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
                  _locationController = value as TextEditingController;

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
            const SizedBox(height: 20),
            TextField(
                controller: _dateController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.date_range_outlined),
                    hintText: 'Enter Date',
                    labelText: 'Date')),
            const SizedBox(height: 20),
            TextField(
                controller: _riskIndexController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Risk Index',
                    labelText: 'Risk Index')),
            const SizedBox(height: 20),
            TextField(
                controller: _rodCauseController,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: Icon(Icons.title_outlined),
                    hintText: 'Enter Rod Cause',
                    labelText: 'Rod Cause')),
            const SizedBox(height: 20),
            TextField(
              controller: _recomendationController,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Recommendation',
                  labelText: 'Recommendation'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _loading = false;
                  _error = false;
                  texterror = '';
                });
                String event = _eventController.text.trim();
                if (event.isEmpty) {
                  setState(() {
                    _error = true;
                    texterror = 'Event is empty';
                  });
                  return;
                }
                String summary = _summaryController.text.trim();
                if (summary.isEmpty) {
                  setState(() {
                    _error = true;
                    texterror = 'Summary is empty';
                  });
                  return;
                }
                String riskIndex = _riskIndexController.text.trim();
                if (riskIndex.isEmpty) {
                  setState(() {
                    _error = true;
                    texterror = 'Risk Index is empty';
                  });
                  return;
                }
                setState(() {
                  _loading = true;
                });
                Subject_model Subject = Subject_model(
                  event: _eventController.text.trim(),
                  Reg: _regController.text.trim(),
                  date: _dateController.text.trim(),
                  summary: _summaryController.text.trim(),
                  hazard: _HazardController.text.trim(),
                  location: _locationController.text.trim(),
                  recommendation:_recomendationController.text.trim(),
                  risk_index: _riskIndexController.text.trim(),
                  Rod_couse: _rodCauseController.text.trim(),
                );
                try {
                  await _db
                      .collection('Subject').add(Subject.toJson());
                  Get.snackbar('Success', 'Subject has been added',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor:Colors.white,
                      colorText: Colors.black);
                } catch(error , stackTrace){
                  Get.snackbar("error","something went wrong",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor:Colors.white,
                    colorText: Colors.black,
                  );
                };
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(300, 10)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(color: Colors.black12)))),
              child: const Text(
                'Add Subject',
                style: TextStyle(
                    color: Color(0xFF0d47A1),
                    fontSize: 30,
                    fontFamily: 'Cairo'
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_loading) const SpinKitDoubleBounce(color: Color(0xFF0d47A1)),
            if (_error)
              Text(texterror,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: Colors.red,
                  )),
          ]),
        ),
      ),
    );
  }
}
