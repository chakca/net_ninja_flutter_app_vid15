import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
 home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card App stateless --> sttful'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 40.0, //drop shadow under title bar is removed
      ),
        floatingActionButton: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    ninjaLevel += 10;
                  });
                },
                backgroundColor: Colors.grey[700],
                child: Container(
                  child: Icon(Icons.plus_one),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FloatingActionButton(
                onPressed: (){
                    setState(() {
                      ninjaLevel -= 10;
                    });
                  },
                backgroundColor: Colors.grey[700],
                child: Container(
                  child: Icon(Icons.exposure_minus_1),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ff.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                //backgroundColor: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                //backgroundColor: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Current Ninja Ratings',
              style: TextStyle(
                color: Colors.grey,
                //backgroundColor: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
            //  '8',
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                //backgroundColor: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_rounded,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                  'chun.li@thenetninja.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
    )
    );
  }
}

