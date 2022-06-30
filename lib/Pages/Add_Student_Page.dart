import 'package:flutter/material.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var email = "";
  var password = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();



  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  clearText() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }
  // Adding Student
 // CollectionReference students =
 // FirebaseFirestore.instance.collection('students');
  addUser(){
    print('User added successfully');
  }
  // Future<void> addUser() {
  //   return students
  //       .add({'name': name, 'email': email, 'password': password})
  //       .then((value) => print('User Added'))
  //       .catchError((error) => print('Failed to Add user: $error'));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Add New Student'),),),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                      hintText: 'Enter Name Here',
                      hintStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15.0)
                    ),
                     // controller: nameController(),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter name ';
                      }
                      return null;
                    },
                  ),
                ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                      hintText: 'Enter Email Here',
                      hintStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15.0)
                  ),
                  // controller: emailController(),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter Email ';
                    }
                    else if(value == !value.contains('@')){
                      return 'Please Enter Valid Email Address';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                      hintText: 'Enter Password Here',
                      hintStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15.0)
                  ),
                  // controller: PasswordController(),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter Password ';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        child: Text('Resister'),
                      onPressed: (){
                          if(_formKey.currentState!.validate()){
                            setState(() {
                              name = nameController.text;
                              email = emailController.text;
                              password = passwordController.text;
                              addUser();
                              clearText();
                            });

                          }
                      },
                    ),
                    ElevatedButton(onPressed: ()=>{clearText()},
                      child: Text('Reset'),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
