// class CommentModel {
//   String? id;
//   String? taskId;
//   String? description;
//   List<Files>? files;
//   String? createdBy;
//   String? createdAt;
//   String? createdByUserName;
//   String? createdByAvatar;

//   CommentModel(
//       {this.id,
//       this.taskId,
//       this.description,
//       this.files,
//       this.createdBy,
//       this.createdAt,
//       this.createdByUserName,
//       this.createdByAvatar});

//   CommentModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     taskId = json['task_id'];
//     description = json['description'];
//     if (json['files'] != null) {
//       files = <Files>[];
//       json['files'].forEach((v) {
//         files!.add(new Files.fromJson(v));
//       });
//     }
//     createdBy = json['created_by'];
//     createdAt = json['created_at'];
//     createdByUserName = json['created_by_user_name'];
//     createdByAvatar = json['created_by_avatar'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['task_id'] = this.taskId;
//     data['description'] = this.description;
//     if (this.files != null) {
//       data['files'] = this.files!.map((v) => v.toJson()).toList();
//     }
//     data['created_by'] = this.createdBy;
//     data['created_at'] = this.createdAt;
//     data['created_by_user_name'] = this.createdByUserName;
//     data['created_by_avatar'] = this.createdByAvatar;
//     return data;
//   }
// }

// class Files {
//   String? fileName;
//   String? url;
//   String? thumbnail;

//   Files({this.fileName, this.url, this.thumbnail});

//   Files.fromJson(Map<String, dynamic> json) {
//     fileName = json['file_name'];
//     url = json['url'];
//     thumbnail = json['thumbnail'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file_name'] = this.fileName;
//     data['url'] = this.url;
//     data['thumbnail'] = this.thumbnail;
//     return data;
//   }
// }
