import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:community/widgets/post_info.dart';

class post_detail extends StatefulWidget {
  const post_detail({Key? key}) : super(key: key);

  @override
  _post_detailState createState() => _post_detailState();
}

class _post_detailState extends State<post_detail> {
  final int appBarColor = 0xfffea640;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(appBarColor),
        title: Text(
          '글 제목',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            post_title(),             //글 제목 및 정보
            Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                child: Column(
                  children: [
                    Text(             //글 내용
                        '글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용'),
                    Padding(          //작성글 검색, 신고
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Text('작성자 님의 '),
                          GestureDetector(
                            child: Text(
                              '[작성글 검색]',
                              style: TextStyle(
                                color: Color(0xff2f14f5),
                              ),
                            ),
                            onTap: () {
                              print('tapped');
                            },
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                              onTap: (){
                                print('report');
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.wb_twighlight,
                                      color: Color(0xffd91f2e)),
                                  SizedBox(width: 2.0),
                                  Text('신고'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(              //각종 버튼
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.thumb_up,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            print('choochun');
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.thumb_down,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            print('bechoochun');
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            print('share');
                          },
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            print('bookmark');
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
