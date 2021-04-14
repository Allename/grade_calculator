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
                    //onChanged: ,
                    hint: Text(
                      'Select unit',
                      style: TextStyle(fontSize: 5),
                    ),
                  ),
                ),
                SizedBox(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: 'Input Grade'),
                  ),
                  width: 100.0,
                ),
                Expanded(
                  child: IconButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: 47.0,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.remove_circle),
                    color: Colors.red,
                  ),
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
                  MaterialButton(
                    color: Colors.red,
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
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
