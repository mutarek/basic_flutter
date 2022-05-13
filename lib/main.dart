import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/loginv.png'),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 30),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Create Account'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                ),
                RichText(
                    text: const TextSpan(
                        text: 'Developed By \n',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                      TextSpan(
                          text: 'M Tarek',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.red)),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
