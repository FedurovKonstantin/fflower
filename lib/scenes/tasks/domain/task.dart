class Task {
  final int id;
  final String title;

  Task(
    this.id,
    this.title,
  );

  Task.fromJson(Map<String, dynamic> json)
      : id = json["id"] as int,
        title = json["title"];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
    };
  }
}
