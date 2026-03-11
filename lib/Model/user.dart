class User {
  int? accountId;
  String? name;
  String? email;
  String? password;
  String? createdAt;

  User({this.accountId, this.name, this.email, this.password, this.createdAt});

  User.fromJson(Map<String, dynamic> json) {
    accountId = json['account_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['account_id'] = this.accountId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['created_at'] = this.createdAt;
    return data;
  }
}