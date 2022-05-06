import 'package:community/screens/post_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _PostDescription extends StatelessWidget {
  const _PostDescription({
    Key? key,
    required this.title,
    required this.author,
    required this.uploadDate,
    required this.views,
    required this.gaechu,
  }) : super(key: key);

  final String title;
  final String author;
  final String uploadDate;
  final String views;
  final String gaechu;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(padding: EdgeInsets.only(bottom: 3.0)),
              Row(
                children: [
                  Text(
                    author,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    '  조회 $views',
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    '  추천 $gaechu',
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                  new Spacer(),
                  Text(
                    uploadDate,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomPostItem extends StatelessWidget {
  const CustomPostItem({
    Key? key,
    required this.title,
    required this.author,
    required this.uploadDate,
    required this.views,
    required this.gaechu,
  }) : super(key: key);

  final String title;
  final String author;
  final String uploadDate;
  final String views;
  final String gaechu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => post_detail()));
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 8.0, 0.0),
          child: Column(
            children: [
              _PostDescription(
                title: title,
                author: author,
                uploadDate: uploadDate,
                views: views,
                gaechu: gaechu,
              ),
              Divider(
                height: 1,
                thickness: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class postTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPostItem(
        title: 'Making Custom ListTile',
        author: 'ㅇㅇ(223.39)',
        uploadDate: '04 / 30',
        views: '18',
        gaechu: '3');
  }
}
