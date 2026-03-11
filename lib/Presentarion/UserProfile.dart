import 'package:flutter/material.dart';
import 'package:social_app_ui/Presentarion/AppBar.dart';
import 'package:social_app_ui/Presentarion/Post.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appBar1(),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "Ahmed Dwedar jjff dwrdaer",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),

              Text(
                "Ahmed Dwedar jjff dwrdaer Ahmed Dwedar jjff dwrdaer Ahmed Dwedar jjff dwrdaer Ahmed Dwedar jjff dwrdaer",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                softWrap: true,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 140,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Add Post",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 180,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(height: 30),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
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
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
