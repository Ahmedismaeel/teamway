class PayloadModel {
  String? projectCommentId;
  String? projectId;
  String? icon;
  String? taskId;
  String? notificationId;
  String? event;

  PayloadModel(
      {this.projectCommentId,
      this.projectId,
      this.icon,
      this.taskId,
      this.notificationId,
      this.event});

  PayloadModel.fromJson(Map<String, dynamic> json) {
    projectCommentId = "${json['project_comment_id']}";
    projectId = "${json['project_id']}";

    icon = json['icon'];
    taskId = "${json['task_id']}";
    notificationId = "${json['notification_id']}";
    event = json['event'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['project_comment_id'] = this.projectCommentId;
    data['project_id'] = this.projectId;
    data['icon'] = this.icon;
    data['task_id'] = this.taskId;
    data['notification_id'] = this.notificationId;
    data['event'] = this.event;
    return data;
  }
}
