import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final Map<String, dynamic> book;

  BookDetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(book['imgUrl'], height: 250, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text('Author: ${book['author']}', style: TextStyle(fontSize: 18)),
            Text('Genre: ${book['genre']}', style: TextStyle(fontSize: 18)),
            Text('Publish Year: ${book['publishYear']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text(
              'Description: \n(Here you can add a description or any other details about the book)',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
