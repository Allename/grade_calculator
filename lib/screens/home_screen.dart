import 'package:flutter/material.dart';
import 'package:grade_calculator/screens/grade_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GRADE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Text(
              'CALCULATOR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 50.0),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => GradeScreen(),
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 80.0),
                alignment: Alignment.center,
                height: 45.0,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'PROCEED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
