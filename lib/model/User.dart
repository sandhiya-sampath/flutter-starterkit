class User {
  String? name;
  String? type;
  String? description;

  // User(
  //     this.name,
  //    this.type,
  //   this.description
  // )

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'type': type, 'description': description};
  }
}
