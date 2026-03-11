

class Posts {
  int? postId;
  int? accountId;
  String? body;
  String? createdAt;

  Posts({this.postId, this.accountId, this.body, this.createdAt});

  Posts.fromJson(Map<String, dynamic> json) {
    postId = json['post_id'];
    accountId = json['account_id'];
    body = json['body'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['post_id'] = this.postId;
    data['account_id'] = this.accountId;
    data['body'] = this.body;
    data['created_at'] = this.createdAt;
    return data;
  }
}
