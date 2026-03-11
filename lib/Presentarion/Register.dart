
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullName = TextEditingController();

 


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

              Icon(Icons.person, size: 100),
              SizedBox(height: 30),
              Text(
                "let's Make A New Acount",

                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 85, 83, 83),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: fullName,
                decoration: InputDecoration(
                  labelText: "Name",
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
              SizedBox(height: 12),
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
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 21,
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
                  onPressed: () async {
                    // try {
                    //   await FirebaseAuth.instance
                    //       .createUserWithEmailAndPassword(
                    //         email: email.text,
                    //         password: password.text,
                    //       );
                    //  await FirebaseAuth.instance.currentUser!
                    //       .sendEmailVerification();
                    //    Navigator.pushReplacementNamed(context, 'login');
                    // } on FirebaseAuthException catch (e) {
                    //   if (e.code == 'weak-password') {
                    //     print('The password provided is too weak.');
                    //   } else if (e.code == 'email-already-in-use') {
                    //     print('The account already exists for that email.');
                    //   }
                    // } catch (e) {
                    //   print(e);
                    // }

            
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Navigate to Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    child: Text(
                      "log in",
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
