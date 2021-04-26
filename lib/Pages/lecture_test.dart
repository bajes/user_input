import 'package:flutter/material.dart';

enum Gender { male, female }

class LectureTest extends StatefulWidget {
  @override
  _LectureTestState createState() => _LectureTestState();
}

class _LectureTestState extends State<LectureTest> {
  Gender gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'user name'),
            ),
            Row(
              children: [
                Radio(
                    value: Gender.male,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      this.gender = value;
                      setState(() {});
                    }),
                Text('Male')
              ],
            ),
            Row(
              children: [
                Radio(
                    value: Gender.female,
                    groupValue: gender,
                    onChanged: (Gender value) {
                      this.gender = value;
                      setState(() {});
                    }),
                Text('FeMale')
              ],
            )
          ],
        ),
      ),
    );
  }
}
