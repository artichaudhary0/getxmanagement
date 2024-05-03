class ToDoModel {
  ToDoModel({
    num? createdAt,
    String? description,
    String? avatar,
    String? id,
  }) {
    _createdAt = createdAt;
    _description = description;
    _avatar = avatar;
    _id = id;
  }

  ToDoModel.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _description = json['Description'];
    _avatar = json['avatar'];
    _id = json['id'];
  }
  num? _createdAt;
  String? _description;
  String? _avatar;
  String? _id;
  ToDoModel copyWith({
    num? createdAt,
    String? description,
    String? avatar,
    String? id,
  }) =>
      ToDoModel(
        createdAt: createdAt ?? _createdAt,
        description: description ?? _description,
        avatar: avatar ?? _avatar,
        id: id ?? _id,
      );
  num? get createdAt => _createdAt;
  String? get description => _description;
  String? get avatar => _avatar;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['Description'] = _description;
    map['avatar'] = _avatar;
    map['id'] = _id;
    return map;
  }
}
