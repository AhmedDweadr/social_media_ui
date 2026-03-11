import 'package:flutter/material.dart';

class appBar1 extends StatelessWidget implements PreferredSizeWidget {
  const appBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        "NileBook",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search, size: 30, color: Colors.white),
          onPressed: () {},
        ),
      ],
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
