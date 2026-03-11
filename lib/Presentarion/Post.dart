import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String? username;
  final String? content;
  final List<String>? images;

  PostWidget({super.key, this.username, this.content, this.images});

  final PageController _controller = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),

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
                username ?? "Unknown",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(height: 20, child: Text("Report")),
                ],
                color: Colors.grey,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            ],
          ),
          const SizedBox(height: 12),

          // Post content
          Text(content ?? "", style: const TextStyle(fontSize: 15)),
          const SizedBox(height: 12),

          // Images with PageView
          if (images != null && images!.isNotEmpty)
            AspectRatio(
              aspectRatio: 4 / 5,
              child: PageView.builder(
                controller: _controller,
                itemCount: images!.length,

                onPageChanged: (index) {
                  _currentPage.value = index;
                },
                itemBuilder: (context, index) {
                  return Image.network(
                    images![index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                },
              ),
            ),

          // Dots indicator
          if (images != null && images!.isNotEmpty)
            ValueListenableBuilder<int>(
              valueListenable: _currentPage,
              builder: (context, currentIndex, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images!.length, (index) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: currentIndex == index ? 12 : 8,
                      height: currentIndex == index ? 12 : 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == index
                            ? Colors.blue
                            : Colors.grey,
                      ),
                    );
                  }),
                );
              },
            ),

          // Actions row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up_alt_outlined, size: 30),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Comment');
                },
                icon: const Icon(Icons.comment_outlined, size: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined, size: 30),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(height: 5, color: Colors.grey),
        ],
      ),
    );
  }
}
