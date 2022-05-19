import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  _searchScreenState createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  final int appBarColor = 0xfffea640;
  String dropdownValue1 = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(appBarColor),
        elevation: 0,
        title: Text(
          '검색',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(3.0, 13.0, 8.0, 13.0),
            child: GestureDetector(
              onTap: () {
                print('통합');
              },
              child: Container(
                width: 45.0,
                child: Center(
                  child: Text('통합'),
                ),
                decoration: BoxDecoration(
                    color: Color(appBarColor),
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    DropdownButton(
                      value: dropdownValue1,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue1 = newValue!;
                        });
                      },
                      items: <String>[
                        'All',
                        'aaa',
                        'bbb',
                        'ccc'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
