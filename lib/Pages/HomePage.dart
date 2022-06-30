import 'package:crud_with_firebase/Pages/List_Student_Page.dart';
import 'package:flutter/material.dart';
import 'Add_Student_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Flutter FireStore CRUD',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddStudentPage(),),);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[900],
                elevation: 3,
              ),
              child: Text('Add'),
            ),
          ],
        ),

      ),
      body: ListStudentPage(),
    );
  }
}
