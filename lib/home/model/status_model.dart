class StatusModel {
  String? id;
  String? title;
  String? keyName;
  String? color;

  StatusModel({this.id, this.title, this.keyName, this.color});

  StatusModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    keyName = json['key_name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['key_name'] = this.keyName;
    data['color'] = this.color;
    return data;
  }
}
