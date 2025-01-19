class CheckListAndCommentModel {
  List<Comments>? comments;
  List<CheckLists>? checkLists;

  CheckListAndCommentModel({this.comments, this.checkLists});

  CheckListAndCommentModel.fromJson(Map<String, dynamic> json) {
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
    if (json['check_lists'] != null) {
      checkLists = <CheckLists>[];
      json['check_lists'].forEach((v) {
        checkLists!.add(new CheckLists.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    if (this.checkLists != null) {
      data['check_lists'] = this.checkLists!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Comments {
  String? id;
  String? taskId;
  String? description;
  List<Files>? files;
  String? createdBy;
  String? createdAt;
  String? createdByUserName;
  String? createdByAvatar;

  Comments(
      {this.id,
      this.taskId,
      this.description,
      this.files,
      this.createdBy,
      this.createdAt,
      this.createdByUserName,
      this.createdByAvatar});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    taskId = json['task_id'];
    description = json['description'];
    if (json['files'] != null) {
      files = <Files>[];
      json['files'].forEach((v) {
        files!.add(new Files.fromJson(v));
      });
    }
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    createdByUserName = json['created_by_user_name'];
    createdByAvatar = json['created_by_avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['task_id'] = this.taskId;
    data['description'] = this.description;
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJson()).toList();
    }
    data['created_by'] = this.createdBy;
    data['created_at'] = this.createdAt;
    data['created_by_user_name'] = this.createdByUserName;
    data['created_by_avatar'] = this.createdByAvatar;
    return data;
  }
}

class Files {
  String? fileName;
  String? url;
  String? thumbnail;

  Files({this.fileName, this.url, this.thumbnail});

  Files.fromJson(Map<String, dynamic> json) {
    fileName = json['file_name'];
    url = json['url'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file_name'] = this.fileName;
    data['url'] = this.url;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

class CheckLists {
  String? id;
  String? title;
  String? isChecked;
  String? sort;

  CheckLists({this.id, this.title, this.isChecked, this.sort});

  CheckLists.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    isChecked = json['is_checked'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['is_checked'] = this.isChecked;
    data['sort'] = this.sort;
    return data;
  }
}
