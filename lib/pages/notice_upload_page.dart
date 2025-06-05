import 'package:flutter/material.dart';

class NoticeUploadPage extends StatefulWidget {
  @override
  _NoticeUploadPageState createState() => _NoticeUploadPageState();
}

class _NoticeUploadPageState extends State<NoticeUploadPage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('お知らせを投稿')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'タイトル'),
            ),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(labelText: '内容'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'title': _titleController.text,
                  'content': _contentController.text,
                });
              },
              child: Text('投稿する'),
            ),
          ],
        ),
      ),
    );
  }
}
