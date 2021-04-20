import 'package:flutter/material.dart';
import 'package:grade_calculator/screens/working_screen.dart';

class GradeScreen extends StatefulWidget {
  @override
  _GradeScreenState createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            children: <Widget>[
              Text(
                'CGPA:',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Semesters',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 100.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(250.0, 170.0, 0, 0),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WorkingScreen(),
                    ),
                  ),
                  backgroundColor: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
