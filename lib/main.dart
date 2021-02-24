import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Idcard_design(),
  ));

class Idcard_design extends StatefulWidget {
  @override
  _Idcard_designState createState() => _Idcard_designState();
}

class _Idcard_designState extends State<Idcard_design> {

  int gameLevel =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text('ID Card Design',
          style: TextStyle(
            color: Colors.blueGrey[800],
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
            fontSize:30.0,
          ),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            gameLevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.blueGrey[200],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.blueGrey[50],
                letterSpacing: 2.0,
                fontSize: 20.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'MD. LITAN SARKAR',
              style: TextStyle(
                  color: Colors.blueGrey[100],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                  color: Colors.blueGrey[50],
                  letterSpacing: 2.0,
                  fontSize: 20.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$gameLevel',
              style: TextStyle(
                color: Colors.blueGrey[100],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[50],
                ),
                SizedBox(width: 4.0),
                Text(
                  'litansarkar95@gmail.com',
                  style: TextStyle(
                    color:Colors.blueGrey[50],
                    fontSize: 23.0,

                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.blueGrey[50],
                ),
                SizedBox(width: 4.0),
                Text(
                  '+8801829107469',
                  style: TextStyle(
                    color:Colors.blueGrey[50],
                    fontSize: 23.0,

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

