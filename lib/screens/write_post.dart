import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class writePostScreen extends StatefulWidget {
  const writePostScreen({Key? key}) : super(key: key);

  @override
  _writePostScreenState createState() => _writePostScreenState();
}

class _writePostScreenState extends State<writePostScreen> {
  final int appBarColor = 0xfffea640;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(appBarColor),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              print('pressed');
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(3.0, 13.0, 8.0, 13.0),
            child: GestureDetector(
              onTap: () {
                print('임시');
              },
              child: Container(
                width: 45,
                child: Center(
                  child: Text('임시'),
                ),
                decoration: BoxDecoration(
                  color: Color(appBarColor),
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('등록');
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(3.0, 13.0, 3.0, 13.0),
              child: Container(
                width: 45,
                child: Center(
                  child: Text('등록'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(35.0),
          child: Container(
            height: 35.0,
            color: Color(appBarColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.white,
                  width: 180.0,
                  height: 25.0,
                  child: TextField(),
                ),
                Container(
                  color: Colors.red,
                  width: 180.0,
                  height: 25.0,
                  child: TextField(),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: TextField(),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.cyan,
                child: TextField(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
