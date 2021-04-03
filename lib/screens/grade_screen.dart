import 'package:flutter/material.dart';

class GradeScreen extends StatefulWidget {
  @override
  _GradeScreenState createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {
  String valueChoose;
  List listItem = [
    'BLD232',
    'BLD213',
    'BLD214',
    'BLD211',
    'CEG211',
    'SVY217',
    'GEG217',
    'ESM216',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grade Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Course Codes'),
                Text('Course Units'),
                Text('Grade'),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                DropdownButton(
                  hint: Text('Selecct course'),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue;
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownButton<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//child: Column(
//children: <Widget>[
//TextField(
//keyboardType: TextInputType.text,
//decoration: InputDecoration(
//hintText: 'Enter course',
//),
//),
//SizedBox(height: 20.0),
//TextField(
//keyboardType: TextInputType.number,
//decoration: InputDecoration(
//hintText: 'nter ',
//),
//),
//],
//),
