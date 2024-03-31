class Model {
  int? id;
  String? personName;
  String? age;

  Model({this.id, this.personName, this.age});

  Model fromJson(json) {
    return Model(
        id: json['id'], personName: json['name'], age: json['"age"']);
  }
  Map<String, dynamic> toJson() {
    return {'name': personName, 'age': age};
  }

}
