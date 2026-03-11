class Comments {
  int? commentId;
  int? postId;
  int? accountId;
  String? commentText;
  String? createdAt;

  Comments(
      {this.commentId,
      this.postId,
      this.accountId,
      this.commentText,
      this.createdAt});

  Comments.fromJson(Map<String, dynamic> json) {
    commentId = json['comment_id'];
    postId = json['post_id'];
    accountId = json['account_id'];
    commentText = json['comment_text'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comment_id'] = this.commentId;
    data['post_id'] = this.postId;
    data['account_id'] = this.accountId;
    data['comment_text'] = this.commentText;
    data['created_at'] = this.createdAt;
    return data;
  }
}