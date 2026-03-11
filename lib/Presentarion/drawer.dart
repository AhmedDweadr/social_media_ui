
import 'package:flutter/material.dart';

class drawer1 extends StatelessWidget {
  const drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              Expanded(
                child: ListView(
                  children: [
                    Card(
                      color: Colors.grey[400],
                      child: InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            "Saved Post",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Card(
                      color: Colors.grey[400],
                      child: InkWell(
                        onTap: () {},
                        child: const ListTile(
                          title: Text(
                            "Setting",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // زرار اللوج أوت ثابت تحت
              Card(
                color: Colors.red[300],
                child: InkWell(
                  onTap: () {
                
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  child: const ListTile(
                    title: Text(
                      "Log out",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
  }
}