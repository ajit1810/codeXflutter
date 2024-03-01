import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  List<String> data = [];
  String userdata = '';
  List delete = [];


  void addToDoList(){
  showModalBottomSheet(
    context: context, 
    builder:(context) {
      return Container(
        margin: EdgeInsets.all(10),
        child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              children: [
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(
                    label: Text("Task")
                  ),
                  onChanged: (value) {
                    userdata = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      addData();
                    });
                    Navigator.pop(context);
                  }, child: Text("save"))
              ],
            ),
        ),
      );
  },);
  }


  void editList(int index){
    showModalBottomSheet(
      context: context,
       builder: (context) {
         return SizedBox(
            height: 200,
            width: 200,
            child: Column(
              children: [
                TextFormField(
                  initialValue: data[index],
                  onChanged: (value) {
                    data[index]=value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() { });
                    Navigator.pop(context);
                  },
                  child: Text('save')
                  )
              ],
            ),
         );
       },) ;
  }

  void addData(){
    data.add(userdata);
  }

  void todeleteList(int index){
    delete = data..removeWhere((element) => element==data[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder:(context, index) {
          return InkWell(
            child: Container(
              height: 50,
              color: Colors.purple,
              margin: EdgeInsets.all(10),
              child: Text(data[index]),
            ),
            onTap: () {
              editList(index);
            },
            onLongPress: () {
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                  title: Text("delete this note"),
                  actions: [
                    ElevatedButton(
                      onPressed: (){
                          setState(() {
                            Navigator.of(context).pop();
                            todeleteList(index);
                          });
                    }, child: Text("yes"))
                  ],
                ),);
            },
          );
        }, ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
              addToDoList();
          },
          child: Icon(Icons.add)),
    );
  }
}