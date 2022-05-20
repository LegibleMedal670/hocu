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
  bool ganyumgeul = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(appBarColor),
        elevation: 0,
        title: Text(
          '검색',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 3.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: SizedBox(
                      width: 250,
                      child: DropdownButton(
                        value: dropdownValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue1 = newValue!;
                          });
                        },
                        items: <String>['All', 'aaa', 'bbb', 'ccc']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SizedBox(
                      width: 120,
                      child: DropdownButton(
                        value: dropdownValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue1 = newValue!;
                          });
                        },
                        items: <String>['All', 'aaa', 'bbb', 'ccc']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: SizedBox(
                      width: 150,
                      child: DropdownButton(
                        value: dropdownValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue1 = newValue!;
                          });
                        },
                        items: <String>['All', 'aaa', 'bbb', 'ccc']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25.0,
                            child: Checkbox(
                                value: ganyumgeul,
                                onChanged: (bool? value) {
                                  setState(() {
                                    ganyumgeul = value!;
                                  });
                                }),
                          ),
                          Text('개념글'),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              print('calender');
                            },
                            icon: Icon(Icons.event_available),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 45.0,
                    width: MediaQuery.of(context).size.width * 0.9 - 6,
                    child: TextField(),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('검색');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(3.0),
                              bottomRight: Radius.circular(3.0)),
                          color: Colors.black54,),
                      height: 45.0,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Icon(Icons.search,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                color: Colors.black54,
                height: 40.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('최근 검색어'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        print('삭제');
                      },
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('플러터'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        print('지우기');
                      },
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
