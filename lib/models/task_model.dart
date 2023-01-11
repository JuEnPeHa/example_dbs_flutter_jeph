import 'dart:convert';

class Task {
  final String? id;
  final String title;
  final String description;
  final DateTime date;
  final String priority;
  final String status;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.priority,
    required this.status,
  });

  Task copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? date,
    String? priority,
    String? status,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      priority: priority ?? this.priority,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date.millisecondsSinceEpoch,
      'priority': priority,
      'status': status,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      priority: map['priority'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Task(id: $id, title: $title, description: $description, date: $date, priority: $priority, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Task &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.date == date &&
        other.priority == priority &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        date.hashCode ^
        priority.hashCode ^
        status.hashCode;
  }

  static List<Task> fromJsonList(List<String> list) {
    if (list.isEmpty) {
      return [];
    } else {
      return list.map((item) => Task.fromJson(item)).toList();
    }
  }

  static List<String> toJsonList(List<Task> tasks) {
    if (tasks.isEmpty) {
      return [];
    } else {
      return tasks.map((task) => task.toJson()).toList();
    }
  }
}
