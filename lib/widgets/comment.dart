import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class comment_member extends StatelessWidget {
  const comment_member({
    Key? key,
    required this.commenter,
    required this.comment,
    required this.uploadDate,
  }) : super(key: key);

  final String commenter;
  final String comment;
  final String uploadDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
          child: Row(
            children: [
              Text(
                commenter,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 15.0,
                  color: Colors.black54,
                ),
                onPressed: () {
                  print('pressed');
                },
                splashRadius: 1.0,
              ),
            ],
          ),
        ),
        Text(comment),
        SizedBox(
          height: 3.0,
        ),
        Text(
          uploadDate,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
      ],
    );
  }
}

class customCommentTile extends StatelessWidget {
  const customCommentTile({
    Key? key,
    required this.commenter,
    required this.comment,
    required this.uploadDate,
  }) : super(key: key);

  final String commenter;
  final String comment;
  final String uploadDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          comment_member(
            commenter: commenter,
            comment: comment,
            uploadDate: uploadDate,
          ),
          Divider(
            height: 1,
            thickness: 1,
          )
        ],
      ),
    );
  }
}

class commentTile extends StatelessWidget {
  const commentTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customCommentTile(
        commenter: '댓글작성자',
        comment: '댓글내용',
        uploadDate: '2022.05.10 20:48');
  }
}
