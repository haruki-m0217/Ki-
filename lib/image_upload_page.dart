import 'package:flutter/material.dart';

class ImageUploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image, size: 100, color: Colors.grey),
          SizedBox(height: 20),
          Text('ここに画像投稿フォームが入ります'),
        ],
      ),
    );
  }
}
