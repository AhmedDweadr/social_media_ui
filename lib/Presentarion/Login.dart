
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _obscureText = true;
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
                "NILEBOOK",

                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Icon(Icons.lock, size: 100),
              SizedBox(height: 30),
              Text(
                "Welcome Back,you've been missed",

                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 85, 83, 83),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 21,
                    color: Color.fromARGB(255, 85, 83, 83),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),

                keyboardType: TextInputType.emailAddress,
                validator:
                    (value) => value!.isEmpty ? "Enter your email" : null,
                //  onSaved: (value) => email = value!,
              ),

              SizedBox(height: 10),

              // Password Field
              TextFormField(
                controller: password,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 21,
                    color: Color.fromARGB(255, 85, 83, 83),
                  
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _obscureText = !_obscureText;
                      setState(() {});
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
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
              SizedBox(height: 25),

              // Login Button
              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () async {
                    
                    
                      Navigator.pushReplacementNamed(context, 'home');
                    
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Navigate to Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {
                      
                      Navigator.pushReplacementNamed(context, 'home');
                      
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
