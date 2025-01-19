class LeadCommentModel {
  int? id;
  int? createdBy;
  String? createdAt;
  String? description;
  int? leadId;
  int? parentId;
  List<Files>? files;
  String? createdByUser;
  String? createdByAvatar;
  int? totalReplies;

  LeadCommentModel(
      {this.id,
      this.createdBy,
      this.createdAt,
      this.description,
      this.leadId,
      this.parentId,
      this.files,
      this.createdByUser,
      this.createdByAvatar,
      this.totalReplies});

  LeadCommentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    description = json['description'];
    leadId = json['lead_id'];
    parentId = json['parent_id'];
    if (json['files'] != null) {
      files = <Files>[];
      json['files'].forEach((v) {
        files!.add(new Files.fromJson(v));
      });
    }
    createdByUser = json['created_by_user'];
    createdByAvatar = json['created_by_avatar'];
    totalReplies = json['total_replies'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_by'] = this.createdBy;
    data['created_at'] = this.createdAt;
    data['description'] = this.description;
    data['lead_id'] = this.leadId;
    data['parent_id'] = this.parentId;
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJson()).toList();
    }
    data['created_by_user'] = this.createdByUser;
    data['created_by_avatar'] = this.createdByAvatar;
    data['total_replies'] = this.totalReplies;
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
