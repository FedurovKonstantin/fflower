class User {
  final String name;

  User(
    this.name,
  );

  User.fromJson(Map<String, dynamic> json) : name = json["name"];

  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }
}
