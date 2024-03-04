// "id": 1,
// 				"typeName": "大数据",
// 				"createdAt": "2022-07-10T17:13:27+08:00",
// 				"updatedAt": "2022-07-10T17:13:29+08:00",
// 				"deletedAt": null

class TypeListModel {
  final int? id;
  final String? typeName;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  TypeListModel(
      {required this.id,
      required this.typeName,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});

  factory TypeListModel.JsonFrom(Map<String, dynamic> json) => TypeListModel(
        id: json['id'],
        typeName: json['typeName'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        deletedAt: json['deletedAt'],
      );
}
