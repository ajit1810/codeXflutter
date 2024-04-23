import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_firebase/Tasks.dart';
import 'package:intl/intl.dart';

class TasksPage extends StatelessWidget {
  final String categoryName;
  final String categoryId;
  String collectionName='';

  TasksPage({
    required this.categoryId,
    required this.categoryName,
    required this.collectionName
  });

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // created "Tasks" collection on firestore
    final CollectionReference tasksRef =
        FirebaseFirestore.instance.collection('tasks');

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 180, 206),
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: const Color.fromRGBO(27, 26, 85, 1),
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          collectionName,
          style:  GoogleFonts.jost(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: tasksRef.where('categoryId', isEqualTo: categoryId).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          // converted firestore tasks colection data to our model class
          final List<Task> tasks =
              snapshot.data!.docs.map((doc) => Task.fromSnapshot(doc)).toList();

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Container(
                margin: const EdgeInsets.all(20),
                height: 80,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(task.title,
                              style:  GoogleFonts.jost(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text('Edit Task'),
                                          content: TextField(
                                            controller: _textFieldController,
                                            decoration: InputDecoration(
                                                hintText: task.title),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text('CANCEL'),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                _textFieldController.clear();
                                              },
                                            ),
                                            TextButton(
                                              child: const Text('SAVE'),
                                              onPressed: () async {
                                                String newCategoryName =
                                                    _textFieldController.text
                                                        .trim();
                                                if (newCategoryName
                                                    .isNotEmpty) {
                                                  await tasksRef
                                                      .doc(task.id)
                                                      .update({
                                                    'title': newCategoryName,
                                                    'timestamp': FieldValue
                                                        .serverTimestamp()
                                                  });
                                                }

                                                Navigator.pop(context);
                                                _textFieldController.clear();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  color: const Color.fromRGBO(179, 183, 238, 1),
                                  icon: const Icon(Icons.edit_outlined)),
                              IconButton(
                                  onPressed: () async {
                                    await tasksRef.doc(task.id).delete();
                                  },
                                  color: const Color.fromRGBO(179, 183, 238, 1),
                                  icon:
                                      const Icon(Icons.delete_outline_rounded))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: Checkbox(
                      value: task.isCompleted,
                      onChanged: (newValue) async {
                        await tasksRef.doc(task.id).update({
                          'isCompleted': newValue,
                        });
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        onPressed: () {
          _showBottomSheet(context, tasksRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, CollectionReference tasksRef) {
    final TextEditingController _controller = TextEditingController();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 60),
                child:  Text(
                  "Enter Task",
                  style: GoogleFonts.averageSans(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 5),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(208, 205, 236, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none)),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () async {
                      String taskTitle = _controller.text.trim();
                      if (taskTitle.isNotEmpty) {
                        await tasksRef.add({
                          'categoryId': categoryId,
                          'title': taskTitle,
                          'isCompleted': false,
                          'timestamp': FieldValue
                              .serverTimestamp(), // Add the timestamp field
                        });

                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                      }
                    },
                    child:  Text(
                      "Add",
                      style:  GoogleFonts.averageSans(color: Colors.black, fontSize: 17,fontWeight: FontWeight.w400),
                    ),
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(208, 205, 236, 1)),
                        fixedSize: MaterialStatePropertyAll(Size(100, 40))),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
