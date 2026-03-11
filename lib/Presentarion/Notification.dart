import 'package:flutter/material.dart';


class Notification1 extends StatefulWidget {
  const Notification1({super.key});

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  // لستة فيها حالات الإشعارات (true = مقروء, false = غير مقروء)
  List<bool> isReadList = List.generate(15, (index) => index % 2 == 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: isReadList.length,
        itemBuilder: (context, index) {
          bool isRead = isReadList[index];
          return Card(
            color: isRead ? Colors.grey[300] : Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Text(
                "Notification #$index",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
