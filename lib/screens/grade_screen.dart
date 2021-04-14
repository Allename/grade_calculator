import 'package:flutter/material.dart';

class GradeScreen extends StatefulWidget {
  @override
  _GradeScreenState createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grade Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Course Code',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Course Units',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Grade',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: 'Input Grade'),
                  ),
                  width: 100.0,
                ),
                SizedBox(
                  width: 60.0,
                  child: DropdownButton(
                    //value: ,
                    hint: Text(
                      'Select grade',
                      style: TextStyle(fontSize: 5),
                    ),
                  ),
                ),
                SizedBox(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: 'Input Course'),
                  ),
                  width: 100.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_circle),
                  color: Colors.red,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  MaterialButton(
                    color: Colors.blueGrey,
                    child: Text(
                      'ADD',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


