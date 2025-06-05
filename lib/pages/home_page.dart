import 'package:flutter/material.dart';
import 'notice_upload_page.dart';

class HomePage extends StatefulWidget {
  final String currentUserId;
  HomePage({required this.currentUserId});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> notices = [];

  void addNotice(String title, String content) {
    setState(() {
      notices.insert(0, {'title': title, 'content': content});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notices.isEmpty
          ? Center(child: Text('現在お知らせはありません'))
          : ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                final notice = notices[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(notice['title'] ?? ''),
                    subtitle: Text(notice['content'] ?? ''),
                  ),
                );
              },
            ),
      floatingActionButton: widget.currentUserId == 'admin123'
          ? FloatingActionButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NoticeUploadPage(),
                  ),
                );

                if (result != null && result is Map<String, String>) {
                  addNotice(result['title']!, result['content']!);
                }
              },
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}
