import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class TextFieldExample extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passwordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Example")),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                  ),
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              Divider(height: 20),
              TextField(
                controller: passwordText,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye, color: Colors.green),
                  ),
                  prefixIcon: Icon(Icons.password, color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              Divider(height: 40),
              ElevatedButton(onPressed: () {
                String email = emailText.text.toString();
                String password = passwordText.text.toString();

                print("Email: $email, Password: $password");
              }, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
