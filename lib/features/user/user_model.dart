import 'dart:convert';

class UserModel {
  final String name;
  final String id;
  UserModel({
    required this.name,
    required this.id,
  });

  UserModel copyWith({
    String? name,
    String? id,
  }) {
    return UserModel(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static UserModel? fromJson(String? source) {
    if (source == null) return null;
    return UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() => 'UserModel(name: $name, id: $id)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
