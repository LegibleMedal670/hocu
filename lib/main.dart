import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/post_tile.dart';
import 'screens/search.dart';
import 'screens/write_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  //나중에 갤러리 스크린으로 독립예정
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final int appBarColor = 0xfffea640;
  String dropdownValue1 = 'All';
  String dropdownValue2 = 'Hot';
  String dropdownValue3 = 'Today';
  String dropdownValue4 = 'Public';

  final ScrollController scrollController = new ScrollController();

  bool _bottom_visibility = true;

  @override
  void initState(){
    scrollController.addListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        _bottom_visibility = true;
      } else {
        _bottom_visibility = false;
      }

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(80.0),
                child: AppBar(
                  elevation: 0,
                  title: Text('Hocu', style: TextStyle(color: Colors.black)),
                  backgroundColor: Color(appBarColor),
                  leading: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      print('button clicked');
                    },
                  ),
                  actions: [
                    IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.search),
                      onPressed: () {
                        print('search pressed');
                      },
                    ),
                    IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.chat),
                      onPressed: () {
                        print('chat pressed');
                      },
                    ),
                  ],
                  bottom: TabBar(
                    tabs: [
                      Container(
                        height: 25.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Post',
                          style: TextStyle(color: Colors.black, fontSize: 13.0),
                        ),
                      ),
                      Container(
                        height: 25.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Series',
                          style: TextStyle(color: Colors.black, fontSize: 13.0),
                        ),
                      ),
                      Container(
                        height: 25.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.black, fontSize: 13.0),
                        ),
                      ),
                      Container(
                        height: 25.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Channel',
                          style: TextStyle(color: Colors.black, fontSize: 13.0),
                        ),
                      ),
                      Container(
                        height: 25.0,
                        alignment: Alignment.center,
                        child: Text(
                          'User',
                          style: TextStyle(color: Colors.black, fontSize: 13.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    //모든게시글
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15.0),
                          height: 30,
                          child: Container(
                            child: Row(
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
                                SizedBox(
                                  width: 15,
                                ),
                                DropdownButton(
                                  value: dropdownValue2,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue2 = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Hot',
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
                                SizedBox(
                                  width: 15,
                                ),
                                DropdownButton(
                                  value: dropdownValue3,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue3 = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Today',
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
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            controller: scrollController,
                            shrinkWrap: true,
                            children: [
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                              postTile(),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: _bottom_visibility,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color:Colors.transparent)
                              )
                            ),
                            height: 60.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('home');
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.home,
                                          size: 30.0,
                                          color: Colors.black54,
                                        ),
                                        Text(
                                          '홈',
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('공지');
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.announcement,
                                          size: 30.0,
                                          color: Colors.black54,
                                        ),
                                        Text(
                                          '공지',
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('개념글');
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.stars,
                                          size: 30.0,
                                          color: Colors.black54,
                                        ),
                                        Text(
                                          '개념글',
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => searchScreen()));
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.search,
                                          size: 30.0,
                                          color: Colors.black54,
                                        ),
                                        Text(
                                          '검색',
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => writePostScreen()));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Icon(
                                          CupertinoIcons.pen,
                                          size: 30.0,
                                          color: Colors.black54,
                                        ),
                                        Text(
                                          '글쓰기',
                                          style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.workspaces_filled),
                  Icon(Icons.workspaces_filled),
                  Icon(Icons.workspaces_filled),
                  Icon(Icons.workspaces_filled),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
