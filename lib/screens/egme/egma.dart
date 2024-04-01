import 'package:egme_investigation/screens/model/model_egma.dart';
import 'package:flutter/material.dart';

class EGME extends StatelessWidget {
   EGME({super.key, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[50],
        title: Text(
          'EGME'
        ),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount:10 ,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Subject_Items(),
                SizedBox(height: 10,),

              ],
            );

          },
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
                 onPressed: (){}, 
                 child: Text(
                     'Date',
                     style:TextStyle(
                       fontSize: 20,
                       color: Colors.black
                     ) ,
                 )
             ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                  'Reg.',
                  style:TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ) ,
                )
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Subject',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ) ,
                    )
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Hazard',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ) ,
                    )
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Location',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ) ,
                    )
                ),
            ],
          ),
        ),
      ),
    );
  }

}
