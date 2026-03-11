
import 'package:flutter/material.dart';
import 'package:social_app_ui/Presentarion/AppBar.dart';
import 'package:social_app_ui/Presentarion/Notification.dart';
import 'package:social_app_ui/Presentarion/Post.dart';
import 'package:social_app_ui/Presentarion/drawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;

  // الصفحات اللي هيتبدلوا
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return PostWidget(
                  username: "Ahmed Dwedar",
                  content:
                      "This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.",
                  images: [
                    "https://picsum.photos/400/200",
                    "https://picsum.photos/300/200",
                    "https://picsum.photos/250/250",
                  ],
                );
              },
            ),
          ],
        ),
      ),

      //هنا كمان هيجيلها parameter
      Notification1(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: appBar1(),
      drawer: drawer1(),

      // هنا بيختار الصفحة حسب قيمة x
      body: pages[x],

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: "Notification",
          ),
        ],
        backgroundColor: Colors.grey[200],
        selectedFontSize: 15,
        selectedItemColor: Colors.black,
        currentIndex: x,
        onTap: (value) {
          setState(() {
            x = value;
          });
        },
      ),
    );
  }
}
