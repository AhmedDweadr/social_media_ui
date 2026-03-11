import 'package:flutter/material.dart';
import 'package:social_app_ui/Presentarion/AppBar.dart';
import 'package:social_app_ui/Presentarion/Post.dart';
import 'package:social_app_ui/Presentarion/drawer.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appBar1(),
      drawer: drawer1(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PostWidget(
              username: "Ahmed Dwedar",
              content:
                  "This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.This is a simple responsive post widget like Facebook. It can handle long text and multiple images automatically.",
              images: [
                "https://picsum.photos/400/200",
                "https://picsum.photos/300/200",
                "https://picsum.photos/250/250",
              ],
            ),

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
                          SizedBox(width: 120),
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
                );
              },
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
