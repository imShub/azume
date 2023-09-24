import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Blogs/blogs.dart';

class AddBlogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Add Blog',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Center(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFF512DA8),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Color(0xFFF1E6FF),
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BlogsMainPage();
                },
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.library_add,
                  size: 50.0,
                  color: Color(0xFF512DA8),
                ),
                Text(
                  ' Add Blog',
                  style: TextStyle(
                    color: Color(0xFF512DA8),
                    fontSize: 50.0,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 50.0,
                horizontal: 10.0,
              ),
              child: _buildForm(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            debugPrint('All validations passed!!!');
          }
        },
        child: Icon(Icons.done),
      ),
    );
  }

  Form _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Name cannot be empty';
                } else if (value.length < 3) {
                  return 'Username must be at least 3 characters long.';
                }
                return null;
              },
              style: TextStyle(
                color: Color(0xFF512DA8),
              ),
              decoration: InputDecoration(
                fillColor: Color(0xFFF1E6FF),
                filled: true,
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Color(0xFF512DA8),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Username cannot be empty';
                } else if (value.length < 3) {
                  return 'Username must be at least 3 characters long.';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Image Link',
                fillColor: Color(0xFFF1E6FF),
                filled: true,
                labelStyle: TextStyle(
                  color: Color(0xFF512DA8),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Image Link cannot be empty';
                } else if (value.length < 3) {
                  return 'Image Link must be at least 3 characters long.';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Title',
                fillColor: Color(0xFFF1E6FF),
                filled: true,
                labelStyle: TextStyle(
                  color: Color(0xFF512DA8),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Title cannot be empty';
                } else if (value.length < 3) {
                  return 'Title must be at least 3 characters long.';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Add blog here !!',
                fillColor: Color(0xFFF1E6FF),
                filled: true,
                labelStyle: TextStyle(
                  color: Color(0xFF512DA8),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
