import 'package:flutter/material.dart';

class post_info_content extends StatefulWidget {
  const post_info_content({
    Key? key,
    required this.title,
    required this.author,
    required this.uploadDate,
    required this.views,
    required this.reply,
  }) : super(key: key);

  final String title;
  final String author;
  final String uploadDate;
  final String views;
  final String reply;

  @override
  _post_info_contentState createState() => _post_info_contentState();
}

class _post_info_contentState extends State<post_info_content> {
  late var post_views = widget.views;
  late var post_reply = widget.reply;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:4.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Text(
                      widget.uploadDate,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                //Padding(padding: EdgeInsets.only(bottom: 3.0)),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '조회 $post_views | ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        '댓글 $post_reply ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButton(
                            splashRadius: 1,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.zoom_in,
                              size: 20.0,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              print('zoom in');
                            },
                          ),
                          SizedBox(width: 3.0),
                          IconButton(
                            splashRadius: 1,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.zoom_out,
                              size: 20.0,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              print('zoom out');
                            },
                          ),
                          SizedBox(width: 8.0),
                          IconButton(
                            splashRadius: 1,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.notifications_none,
                              size: 20.0,
                              color: Color(0xff6686d0),
                            ),
                            onPressed: () {
                              print('noti');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class post_info extends StatefulWidget {
  const post_info({
    Key? key,
    required this.title,
    required this.author,
    required this.uploadDate,
    required this.views,
    required this.reply,
  }) : super(key: key);

  final String title;
  final String author;
  final String uploadDate;
  final String views;
  final String reply;

  @override
  _post_infoState createState() => _post_infoState();
}

class _post_infoState extends State<post_info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3.0, 4.0, 3.0, 0.0),
        child: post_info_content(
          title: widget.title,
          author: widget.author,
          uploadDate: widget.uploadDate,
          views: widget.views,
          reply: widget.reply,
        ),
      ),
    );
  }
}

class post_title extends StatefulWidget {
  const post_title({Key? key}) : super(key: key);

  @override
  _post_titleState createState() => _post_titleState();
}

class _post_titleState extends State<post_title> {
  @override
  Widget build(BuildContext context) {
    return post_info(
        title: '글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목',
        author: '작성자',
        uploadDate: '작성일',
        views: '조회수',
        reply: '댓글수');
  }
}
