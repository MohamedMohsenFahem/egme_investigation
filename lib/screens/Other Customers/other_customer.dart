import 'package:flutter/material.dart';

class OtherCustomers extends StatelessWidget {
   OtherCustomers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[50],
        title: Text(
            'Other Customer'
        ),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return makeCard;
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
  final makeCard = Card(
    elevation: 8.0,
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            "Introduction to Driving",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.linear_scale, color: Colors.yellowAccent),
              Text(" Intermediate", style: TextStyle(color: Colors.white))
            ],
          ),
          trailing:
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.keyboard_arrow_right),
            color: Colors.white,
          )
      ),
    ),
  );
}
