import 'dart:convert';

import 'package:core/core.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/expenses/model/dropdown_string.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/home/model/profile_model.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/leads/models/lead_source_model.dart';
import 'package:internal_app/leads/models/lead_status_model.dart';
import 'package:internal_app/project/model/site_status_mode.dart';

listToListString(List<dynamic> items) {
  List<String> list = [];
  items.forEach((data) {
    list.add(json.encode(data));
  });
  return list;
}

class InitApis {
  static const String url = "https://ip.teamway.om/index.php";
  static Future<void> statusList() async {
    final response = await DioClient.instance.get(EndPoints.statusList);
    List<String> list = [];
    response.data.forEach((item) {
      list.add(json.encode(StatusModel.fromJson(item)));
    });
    SharedPreferenceHelper.instance.saveStatusList(list);
    return;
  }

  static Future<void> myProfile() async {
    final response = await DioClient.instance.get(EndPoints.myProfile);
    await SharedPreferenceHelper.instance
        .saveUserData(json.encode(ProfileModel.fromJson(response.data)));
    return;
  }

  static Future<void> leadStatusListApi() async {
    final body = await EndPoints.leadStatusList
        .getList<LeadStatusModel>(fromJson: LeadStatusModel.fromJson);

    await SharedPreferenceHelper.instance
        .leadStatusListApi(listToListString(body));
  }

  static List<LeadStatusModel> get leadStatusList {
    final list = SharedPreferenceHelper.instance.leadStatusList;
    return List.generate(list.length, (i) {
      return LeadStatusModel.fromJson(json.decode(list[i]));
    });
  }

  // static Future<void> leadSourceListApi() async {
  //   final body = await EndPoints.leadSourceList
  //       .getList<LeadSourceModel>(fromJson: LeadSourceModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .leadSourceListApi(listToListString(body));
  // }

  // static List<LeadSourceModel> get leadSourceList {
  //   final list = SharedPreferenceHelper.instance.leadSourceList;
  //   return List.generate(list.length, (i) {
  //     return LeadSourceModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> siteStatusListApi() async {
  //   final body = await EndPoints.siteStatus
  //       .getList<SiteStatusModel>(fromJson: SiteStatusModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .siteStatusListApi(listToListString(body));
  // }

  // static List<SiteStatusModel> get siteStatusList {
  //   final list = SharedPreferenceHelper.instance.siteStatusList;
  //   return List.generate(list.length, (i) {
  //     return SiteStatusModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static SiteStatusModel? searchSiteStatus(int? id) {
  //   try {
  //     final _status =
  //         InitApis.siteStatusList.firstWhere((test) => id == test.id);
  //     return _status;
  //   } catch (e) {
  //     return null;
  //   }
  // }

  // static Future<void> projectStatusListApi() async {
  //   final response = await DioClient.instance.get(EndPoints.projectStatusList);
  //   List<String> list = [];
  //   response.data.forEach((item) {
  //     list.add(item);
  //   });
  //   list;
  //   await SharedPreferenceHelper.instance.projectStatusListApi(list);
  // }

  // static List<String> get projectStatusList {
  //   return SharedPreferenceHelper.instance.projectStatusList;
  // }

  // static Future<void> paymentModeApi() async {
  //   final body = await EndPoints.paymentMode
  //       .getList<DropDownStringModel>(fromJson: DropDownStringModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .paymentModeApi(listToListString(body));
  // }

  // static List<DropDownStringModel> get paymentMode {
  //   final list = SharedPreferenceHelper.instance.paymentMode;
  //   return List.generate(list.length, (i) {
  //     return DropDownStringModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> bankListApi() async {
  //   final body = await EndPoints.bankList
  //       .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  //   await SharedPreferenceHelper.instance.bankListApi(listToListString(body));
  // }

  // static List<DropdownModel> get bankList {
  //   final list = SharedPreferenceHelper.instance.bankList;
  //   return List.generate(list.length, (i) {
  //     return DropdownModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> taxListApi() async {
  //   final body = await EndPoints.taxList
  //       .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  //   await SharedPreferenceHelper.instance.taxListApi(listToListString(body));
  // }

  // static List<DropdownModel> get taxList {
  //   final list = SharedPreferenceHelper.instance.taxList;
  //   return List.generate(list.length, (i) {
  //     return DropdownModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> expenseStatusApi() async {
  //   // final body = await EndPoints.expenseStatus
  //   //     .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  //   // await SharedPreferenceHelper.instance
  //   //     .expenseStatusApi(listToListString(body));
  //   final body = await EndPoints.expenseStatus.test();
  //   List<String> list = [];
  //   body.forEach((item) {
  //     list.add(item);
  //   });
  //   SharedPreferenceHelper.instance.expenseStatusApi(list);
  // }

  // static List<String> get expenseStatus {
  //   final list = SharedPreferenceHelper.instance.expenseStatus;
  //   return list;
  // }

  // static Future<void> expensesTeamMemberApi() async {
  //   final body = await EndPoints.expensesTeamMember
  //       .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .expensesTeamMemberApi(listToListString(body));
  // }

  // static List<DropdownModel> get expensesTeamMember {
  //   final list = SharedPreferenceHelper.instance.expensesTeamMember;
  //   return List.generate(list.length, (i) {
  //     return DropdownModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> treasuryListApi() async {
  //   final body = await EndPoints.treasuryList
  //       .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .treasuryListApi(listToListString(body));
  // }

  // static List<DropdownModel> get treasuryList {
  //   final list = SharedPreferenceHelper.instance.treasuryList;
  //   return List.generate(list.length, (i) {
  //     return DropdownModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> expensesCategoryListApi() async {
  //   final body = await EndPoints.expensesCategoryList
  //       .getList<DropdownModel>(fromJson: DropdownModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .expensesCategoryListApi(listToListString(body));
  // }

  // static List<DropdownModel> get expensesCategoryList {
  //   final list = SharedPreferenceHelper.instance.expensesCategoryList;
  //   return List.generate(list.length, (i) {
  //     return DropdownModel.fromJson(json.decode(list[i]));
  //   });
  // }

  // static Future<void> teamMemberListApi() async {
  //   final body = await EndPoints.teamMemberList
  //       .getList<MemberModel>(fromJson: MemberModel.fromJson);
  //   await SharedPreferenceHelper.instance
  //       .teamMemberListApi(listToListString(body));
  // }

  // static List<DropdownModel> get teamMemberList {
  //   final list = SharedPreferenceHelper.instance.teamMemberList;
  //   return List.generate(list.length, (i) {
  //     return DropdownModel.fromJson(json.decode(list[i]));
  //   });
  // }
}
