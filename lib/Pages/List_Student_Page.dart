import 'package:crud_with_firebase/Pages/Update_Student_Page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({Key? key}) : super(key: key);

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  deleteUser(id){
    print('User Deleted $id');
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(),
            columnWidths: {0: FixedColumnWidth(140)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Action',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                TableCell(
                  child: Container(
                    //color: Colors.green,
                    child: Center(
                      child: Text(
                        'Prabhu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    // color: Colors.green,
                    child: Center(
                      child: Text(
                        'Prabhu@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                      // color: Colors.green,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateStudentPage(id: '',),
                            ),
                          );
                        },
                      ),
                      //SizedBox(width: 20.0,),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: ()=> {deleteUser(1)},
                      ),
                    ],
                  )),
                ),
              ]),

            ],
          ),
        ),
      ),
    );
  }
}
