import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class writePostScreen extends StatefulWidget {
  const writePostScreen({Key? key}) : super(key: key);

  @override
  _writePostScreenState createState() => _writePostScreenState();
}

class _writePostScreenState extends State<writePostScreen> {
  final int appBarColor = 0xfffea640;
  quill.QuillController _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 180.0,
                      height: 30.0,
                      child: TextField(
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                            hintText: ' 닉네임',
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 5.0),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 180.0,
                      height: 30.0,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                            hintText: ' 비밀번호',
                            isDense: true,
                            contentPadding: EdgeInsets.only(left: 5.0),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: ' 제목',
                    contentPadding: EdgeInsets.only(left: 5.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: quill.QuillEditor(
                    placeholder: ' 내용',
                    expands: false,
                    focusNode: FocusNode(),
                    padding: EdgeInsets.zero,
                    scrollController: ScrollController(),
                    scrollable: true,
                    autoFocus: false,
                    controller: _controller,
                    readOnly: false,
                  ),
                ),
              ),
              quill.QuillToolbar.basic(
                controller: _controller,
                showUndo: false,
                showRedo: false,
                showFontSize: false,
                showBoldButton: false,
                showItalicButton: false,
                showUnderLineButton: false,
                showColorButton: false,
                showBackgroundColorButton: false,
                showStrikeThrough: false,
                showHeaderStyle: false,
                showListBullets: false,
                showListNumbers: false,
                showQuote: false,
                showLeftAlignment: false,
                showRightAlignment: false,
                showIndent: false,
                showCodeBlock: false,
                showListCheck: false,
                showInlineCode: false,
                showDividers: false,
                showCenterAlignment: false,
                showClearFormat: false,
                showAlignmentButtons: false,
                showDirection: false,
                showJustifyAlignment: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
