import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:community/widgets/comment.dart';
import 'package:community/widgets/post_info.dart';

class post_detail extends StatefulWidget {
  const post_detail({Key? key}) : super(key: key);

  @override
  _post_detailState createState() => _post_detailState();
}

class _post_detailState extends State<post_detail> {

  final int appBarColor = 0xfffea640;

  final ScrollController scrollController = new ScrollController();

  bool textform_visibility = true;

  @override
  void initState(){
    scrollController.addListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        textform_visibility = true;
      } else {
        textform_visibility = false;
      }

      setState(() {});
    });
    super.initState();
  }

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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  post_title(), //글 제목 및 정보
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0),
                        child: Column(
                          children: [
                            Text(       //글 내용
                                '글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용'),
                            Padding(
                              //작성글 검색, 신고
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
                                      onTap: () {
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
                            Row(
                              //각종 버튼
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //임시광고
                        color: Colors.cyan,
                        height: 40.0,
                        child: Center(
                          child: Text(
                            '광 고',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(    //댓글구분선
                        color: Colors.black54,
                        height: 35.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                          child: Row(
                            children: [
                              Text(
                                '댓글 (댓글수)   ',
                                style: TextStyle(fontSize: 14.0),
                              ),
                              IconButton(
                                splashRadius: 1.0,
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                icon: Icon(
                                  Icons.refresh,
                                  color: Colors.black45,
                                ),
                                onPressed: () {
                                  print('pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(   //정렬
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5.0,2.0,5.0,2.0),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    print('등록순');
                                  },
                                  splashFactory: NoSplash.splashFactory,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.blueAccent,
                                      ),
                                      Text(
                                        ' 등록순',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                InkWell(
                                  onTap: (){
                                    print('최신순');
                                  },
                                  splashFactory: NoSplash.splashFactory,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.black54,
                                      ),
                                      Text(
                                        ' 최신순',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                InkWell(
                                  onTap: (){
                                    print('답글순');
                                  },
                                  splashFactory: NoSplash.splashFactory,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.black54,
                                      ),
                                      Text(
                                        ' 답글순',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                      commentTile(),  //댓글들
                      commentTile(),
                      commentTile(),
                      commentTile(),
                      commentTile(),
                      commentTile(),
                      commentTile(),
                      commentTile(),
                      commentTile(),

                    ],
                  ),

                ],
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(color: Colors.black),
                    bottom: BorderSide(color:Colors.transparent)
                ),
              ),
              child: Visibility(
                visible: textform_visibility,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: " 댓글 입력",
                      hintStyle: TextStyle(color: Colors.black26),
                      suffixIcon: IconButton(
                        splashRadius: 1.0,
                        icon: Icon(Icons.send),
                        onPressed: (){
                          print('send');
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
