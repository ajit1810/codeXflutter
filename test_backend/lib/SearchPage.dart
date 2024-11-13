import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:test_backend/bookDetails.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<dynamic> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final response = await http.get(Uri.parse('http://localhost:8080/getBooks'));
    if (response.statusCode == 200) {
      setState(() {
        books = json.decode(response.body);
      });
    }
  }

  Future<void> deleteBook(int id) async {
    await http.delete(Uri.parse('http://localhost:8080/delete/$id'));
    fetchBooks(); // Refresh the list
  }

  Future<void> editBook(int id, Map<String, dynamic> bookDetails) async {
    await http.put(
      Uri.parse('http://localhost:8080/edit/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(bookDetails),
    );
    fetchBooks(); // Refresh the list
  }

  void showEditDialog(int id, String currentTitle, String currentAuthor, String currentImgUrl, String currentGenre, int currentPublishYear) {
    final titleController = TextEditingController(text: currentTitle);
    final authorController = TextEditingController(text: currentAuthor);
    final imgUrlController = TextEditingController(text: currentImgUrl);
    final genreController = TextEditingController(text: currentGenre);
    final publishYearController = TextEditingController(text: currentPublishYear.toString());

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Book'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
              TextField(controller: authorController, decoration: InputDecoration(labelText: 'Author')),
              TextField(controller: imgUrlController, decoration: InputDecoration(labelText: 'Image URL')),
              TextField(controller: genreController, decoration: InputDecoration(labelText: 'Genre')),
              TextField(controller: publishYearController, decoration: InputDecoration(labelText: 'Publish Year'), keyboardType: TextInputType.number),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final updatedBook = {
                  'title': titleController.text,
                  'author': authorController.text,
                  'imgUrl': imgUrlController.text,
                  'genre': genreController.text,
                  'publishYear': int.tryParse(publishYearController.text) ?? 0,
                };
                editBook(id, updatedBook);
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Books')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          debugPrint('${books.length}');
          return GestureDetector(
            onTap: () {
              // Navigate to the detail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(book: books[index]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(books[index]['imgUrl'])),
              color: Colors.amber,
              ),
              height: 150,
              child: ListTile(
                
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        showEditDialog(
                          books[index]['id'],
                          books[index]['title'],
                          books[index]['author'],
                          books[index]['imgUrl'],
                          books[index]['genre'],
                          books[index]['publishYear'],
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => deleteBook(books[index]['id']),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
