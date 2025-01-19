class EndPoints {
  static const String url = "https://ip.teamway.om/index.php";

  static const String login = "$url/api/v1/auth/login";

  static const String myPorfile = "$url/api/v1/user/my-profile";

  static const String fcmToken = "$url/api/v1/user/set-fcm-token";

  static const String myTaskList = "$url/api/v1/tasks/my-tasks";

  static const String task = "$url/api/v1/tasks/";

  static const String subTasksList = "$url/api/v1/tasks/sub-tasks/";

  static const String commentAndCheckList =
      "$url/api/v1/tasks/comments-checklist/";

  static String updateTasK(String statusId, int taskId) {
    return "$url/api/v1/tasks/$taskId/update-status/$statusId";
  }

  static String updateCheckList(int status, String checkListId) {
    return "$url/api/v1/tasks/checklist/$checkListId/update-status/$status";
  }

  static String updateTaskInfo(int taskId) {
    return "$url/api/v1/tasks/$taskId/update-info";
  }

  static const String myProfile = "$url/api/v1/user/my-profile";

  static const String projectList = "$url/api/v1/common/projects/dropdown";

  static String projectFilelist({required String projectId}) {
    return "$url/api/v1/projects/$projectId/files";
  }

  static String projectSystemList = "$url/api/v1/common/system-types/dropdown";
  static String addProjectFiles(projectId) =>
      "$url/api/v1/projects/$projectId/files/add";

  static String addComment({required int taskId}) {
    return "$url/api/v1/tasks/$taskId/comment/add";
  }

  static String addCheckList({required int taskId}) {
    return "$url/api/v1/tasks/$taskId/checklist/add";
  }

  static String removeCheckList({required int taskId}) {
    return "$url/api/v1/tasks/checklist/$taskId/delete";
  }

  static String removeComment({required int taskId}) {
    return "$url/api/v1/tasks/comment/$taskId/delete";
  }

  static String projectDetails({required int projectId}) {
    return "$url/api/v1/projects/$projectId/details";
  }

  static String projectDetailsV2({required int projectId}) {
    return "$url/api/v2/projects/$projectId/details";
  }

  static String projectInvoiceList(String projectId) =>
      "$url/api/v1/projects/$projectId/invoices";

  static String taskActivity(
      {required int taskId, required int page, required int pageSize}) {
    return "$url/api/v1/tasks/$taskId/activity-log?page=$page&size=$pageSize";
  }

  static String projectActivity(
      {required int projectId, required int page, required int pageSize}) {
    return "$url/api/v1/projects/$projectId/activity-log?page=$page&size=$pageSize";
  }

  static String createExpenses = "$url/api/v1/expenses";
  static String updateExpenses({required int expenseId}) {
    return "$url/api/v1/expenses/$expenseId/update";
  }

  static String categoryItemList({required int categoryId}) {
    return "$url/api/v1/expenses/categories/$categoryId/items/dropdown";
  }

  static String expensesList(
      {required String fromDate, required String toDate}) {
    return "$url/api/v1/expenses/list?start_date=$fromDate&end_date=$toDate";
  }

  static String projectComments({required String? projectId}) =>
      "$url/api/v1/projects/$projectId/comments";

  static String commentReply({required String? commentId}) =>
      "$url/api/v1/projects/comments/$commentId/replies";

  static String addProjectComment({required String? projectId}) =>
      "$url/api/v1/projects/$projectId/comments/post";

  // static String addCommentReply({required String? commentId}) =>
  //     "$url/api/v1/projects/comments/$commentId/replies";
  static String projectChangeStatus(
          {required String? projectId, required String status}) =>
      "$url/api/v1/projects/$projectId/change_status/$status";

  static String updateOperation({
    required String? projectId,
  }) =>
      "$url/api/v1/projects/$projectId/operation/update";

  static const String projectStages =
      "$url/api/v1/common/project-stages/dropdown";
  static String ptCashTransactions(
          {required String startDate, required String endDate}) =>
      "$url/api/v1/pt-cash/transactions?start_date=$startDate&end_date=$endDate";
  static String ptCashSummary(int mine) =>
      "$url/api/v1/pt-cash/summery?mine_only=$mine";

  static String leadsList(
      {required List<int> users,
      required List<int> status,
      required int? source,
      required String? search,
      required int page,
      required int size}) {
    String statusList = "";
    for (int i = 0; i < status.length; i++) {
      statusList = statusList +
          ((i == (status.length - 1)) ? "${status[i]}" : "${status[i]},");
    }
    String userList = "";
    for (int i = 0; i < users.length; i++) {
      userList = userList +
          ((i == (users.length - 1)) ? "${users[i]}" : "${users[i]},");
    }

    return "$url/api/v1/leads?status=$statusList&page=$page&size=$size&users=$userList${source != null ? "&source=$source" : ""}${search == null || search.isEmpty ? "" : "&search=$search"}";
  }

  static String leadById({required int leadId}) => "$url/api/v1/leads/$leadId";
  static String leadStatusList = "$url/api/v1/common/lead-status/dropdown";
  static String leadSourceList = "$url/api/v1/common/lead-source/dropdown";
  static const String siteStatus = "$url/api/v1/common/site-status/dropdown";
  static const String projectStatusList = "$url/api/v1/projects/statuses";
  static const String paymentMode = "$url/api/v1/common/payment-mode/dropdown";
  static const String bankList = "$url/api/v1/common/banks/dropdown";
  static const String taxList = "$url/api/v1/common/taxes/dropdown";
  static const String expenseStatus = "$url/api/v1/expenses/status/list";
  static const String expensesTeamMember =
      "$url/api/v1/common/team-members/dropdown";
  static const String treasuryList = "$url/api/v1/expenses/treasury-dropdown";
  static const String teamMemberList =
      "$url/api/v1/common/team-members/dropdown";
  static String expensesCategoryList =
      "$url/api/v1/expenses/categories/dropdown";
  static const String statusList = "$url/api/v1/tasks/statuses";

  static String leadComments({required String leadId}) =>
      "$url/api/v1/leads/$leadId/comments";
  static String leadCommentReplies({required String commentId}) =>
      "$url/api/v1/leads/comments/$commentId/replies";

  static String leadAddUpdateComment({required String leadId}) =>
      "$url/api/v1/leads/$leadId/comments/add-or-update";

  static String addUpdateLead = "$url/api/v1/leads/add-or-update";

  static String lableSuggestions = "$url/api/v1/leads/label-suggestions";

  static String downloadPdf(int invoiceId) =>
      "$url/api/v1/invoices/$invoiceId/pdf";
  static String projectDuoAmount(String projectId) =>
      "$url/api/v1/projects/$projectId/due-amount";
  static String projectDeliveryNote(int projectId) =>
      "$url/api/v1/delivery-notes?project_id=$projectId&status=approved";
  // "$url/api/v1/delivery-notes?status=approved";

  static String downLoadDeliveryNote(int deliveryNoteId) =>
      "$url/api/v1/delivery-notes/$deliveryNoteId/download-pdf";

  static String myNotification({required int page, required int pageSize}) =>
      "$url/api/v1/notifications/my-notifications?page=$page&size=$pageSize";
  static String leadEstimate({required int leadId}) =>
      "$url/api/v1/estimates/client/$leadId";
  static String leadDownloadPdf({required int estimateId}) =>
      '$url/api/v1/estimates/$estimateId/pdf';
  static String projectEstimate({required int projectId}) =>
      "$url/api/v1/estimates?project_id=$projectId";
}
