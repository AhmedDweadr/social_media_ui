import 'package:flutter/material.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _LoginState();
}

class _LoginState extends State<Changepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "Change Password",

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Icon(Icons.lock, size: 100),

              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "current Password",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 85, 83, 83),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),

                validator:
                    (value) => value!.isEmpty ? "Enter your password" : null,
                //     onSaved: (value) => password = value!,
              ),

              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "New Password",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 85, 83, 83),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,

                validator:
                    (value) => value!.isEmpty ? "Enter your password" : null,
                //     onSaved: (value) => password = value!,
              ),

              SizedBox(height: 10),
              // Password Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 85, 83, 83),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,

                validator:
                    (value) => value!.isEmpty ? "Enter your password" : null,
                //     onSaved: (value) => password = value!,
              ),
              SizedBox(height: 25),

              // Login Button
              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black38,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "cancel",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
