import 'package:flutter/material.dart';
import 'package:social_app_ui/Presentarion/AppBar.dart';

class Commentoncomment extends StatefulWidget {
  const Commentoncomment({super.key});

  @override
  State<Commentoncomment> createState() => _CommentoncommentState();
}

class _CommentoncommentState extends State<Commentoncomment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(),

      backgroundColor: Colors.grey[300],

      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User info
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Ahmed Dwedar",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 100),
                      PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            onTap: () {},
                            height: 20,
                            child: Text("report"),
                          ),
                        ],
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  ListTile(
                    title: Text(
                      "This is a simple responsive post widget like Facebook",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined, size: 30),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.reply, size: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.grey[300],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // User info
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Ahmed Dwedar",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 80),
                                PopupMenuButton(
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      onTap: () {},
                                      height: 20,
                                      child: Text("report"),
                                    ),
                                  ],
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                            ListTile(
                              title: Text(
                                "This is a simple responsive post widget like Facebook",
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.reply, size: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            border: Border(top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Row(
            children: [
              // TextField
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Add Comment",
                    border: InputBorder.none,
                  ),
                ),
              ),

              // زرار الإرسال
              IconButton(
                icon: Icon(Icons.send, color: Colors.black),
                onPressed: () {
                  // هنا هتحط اللوجيك بتاع الإرسال
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
