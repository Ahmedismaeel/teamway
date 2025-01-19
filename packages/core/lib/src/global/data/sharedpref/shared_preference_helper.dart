import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  static late SharedPreferences sharedPreference;

  /// private constructor
  SharedPreferenceHelper._();

  /// the one and only instance of this singleton
  static final instance = SharedPreferenceHelper._();

  // constructor
  static Future<SharedPreferences> init() async {
    sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference;
  }

  //

  Future<bool> leadStatusListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.leadStatusListApi, list);
  }

  List<String> get leadStatusList {
    return sharedPreference.getStringList(Preferences.leadStatusListApi) ?? [];
  }

  Future<bool> leadSourceListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.leadSourceListApi, list);
  }

  List<String> get leadSourceList {
    return sharedPreference.getStringList(Preferences.leadSourceListApi) ?? [];
  }

  Future<bool> siteStatusListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.siteStatusListApi, list);
  }

  List<String> get siteStatusList {
    return sharedPreference.getStringList(Preferences.siteStatusListApi) ?? [];
  }

  Future<bool> projectStatusListApi(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.projectStatusListApi, list);
  }

  List<String> get projectStatusList {
    return sharedPreference.getStringList(Preferences.projectStatusListApi) ??
        [];
  }

  Future<bool> paymentModeApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.paymentModeApi, list);
  }

  List<String> get paymentMode {
    return sharedPreference.getStringList(Preferences.paymentModeApi) ?? [];
  }

  Future<bool> bankListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.bankListApi, list);
  }

  List<String> get bankList {
    return sharedPreference.getStringList(Preferences.bankListApi) ?? [];
  }

  Future<bool> taxListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.taxListApi, list);
  }

  List<String> get taxList {
    return sharedPreference.getStringList(Preferences.taxListApi) ?? [];
  }

  Future<bool> expenseStatusApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.expenseStatusApi, list);
  }

  List<String> get expenseStatus {
    return sharedPreference.getStringList(Preferences.expenseStatusApi) ?? [];
  }

  Future<bool> expensesTeamMemberApi(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.expensesTeamMemberApi, list);
  }

  List<String> get expensesTeamMember {
    return sharedPreference.getStringList(Preferences.expensesTeamMemberApi) ??
        [];
  }

  Future<bool> treasuryListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.treasuryListApi, list);
  }

  List<String> get treasuryList {
    return sharedPreference.getStringList(Preferences.treasuryListApi) ?? [];
  }

  Future<bool> expensesCategoryListApi(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.expensesCategoryList, list);
  }

  List<String> get expensesCategoryList {
    return sharedPreference.getStringList(Preferences.expensesCategoryList) ??
        [];
  }

  Future<bool> teamMemberListApi(List<String> list) async {
    return sharedPreference.setStringList(Preferences.teamMemberListApi, list);
  }

  List<String> get teamMemberList {
    return sharedPreference.getStringList(Preferences.teamMemberListApi) ?? [];
  }

  //
  // General Methods: ----------------------------------------------------------
  String? get authToken {
    return sharedPreference.getString(Preferences.auth_token);
  }

  Future<bool> saveAuthToken(String authToken) async {
    saveIsLoggedIn(true);
    return sharedPreference.setString(Preferences.auth_token, authToken);
  }

  String? get roleName {
    return sharedPreference.getString(Preferences.roleName);
  }

  Future<bool> saveRoleName(String role) async {
    return sharedPreference.setString(Preferences.roleName, role);
  }

//
  Future<bool> saveTaskMembersFilterList(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.taskMemberFilterList, list);
  }

  List<String> get taskMembersFilterList {
    return sharedPreference.getStringList(Preferences.taskMemberFilterList) ??
        [];
  }

//
  Future<bool> saveLeadMembersFilterList(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.leadMemberFilterList, list);
  }

  List<String> get leadMembersFilterList {
    return sharedPreference.getStringList(Preferences.leadMemberFilterList) ??
        [];
  }

//
  Future<bool> saveLeadSourceFilterList(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.leadSourceFilterList, list);
  }

  List<String> get leadSourceFilterList {
    return sharedPreference.getStringList(Preferences.leadSourceFilterList) ??
        [];
  }

  //
  Future<bool> saveTaskStatusFilterList(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.taskStatusFilterList, list);
  }

  List<String> get taskStatusFilterList {
    return sharedPreference.getStringList(Preferences.taskStatusFilterList) ??
        [];
  }

//
  Future<bool> saveLeadStatusFilterList(List<String> list) async {
    return sharedPreference.setStringList(
        Preferences.leadStatusFilterList, list);
  }

  List<String> get leadStatusFilterList {
    return sharedPreference.getStringList(Preferences.leadStatusFilterList) ??
        [];
  }

//
  String? get userData {
    return sharedPreference.getString(Preferences.userData);
  }

  Future<bool> saveUserData(String user) async {
    return sharedPreference.setString(Preferences.userData, user);
  }

  Future<bool> saveStatusList(List<String> list) async {
    return sharedPreference.setStringList(Preferences.statusList, list);
  }

  List<String> get statusList {
    return sharedPreference.getStringList(Preferences.statusList) ?? [];
  }

  String? get baseUrl {
    return sharedPreference.getString(Preferences.baseUrl);
  }

  int? get connectionTimeout {
    return sharedPreference.getInt(Preferences.connectionTimeout);
  }

  int? get receiveTimeout {
    return sharedPreference.getInt(Preferences.receiveTimeout);
  }

  Future<bool> saveBaseUrl(
      String baseUrl, int connectionTimeout, int receiveTimeout) async {
    try {
      await sharedPreference.setString(Preferences.baseUrl, baseUrl);
      await sharedPreference.setInt(
          Preferences.connectionTimeout, connectionTimeout);
      await sharedPreference.setInt(Preferences.receiveTimeout, receiveTimeout);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> removeAuthToken() async {
    await saveIsLoggedIn(false);
    return sharedPreference.remove(Preferences.auth_token);
  }

  // Login:---------------------------------------------------------------------
  bool get isLoggedIn {
    return sharedPreference.getBool(Preferences.is_logged_in) ?? false;
  }

  Future<bool> saveIsLoggedIn(bool value) async {
    return sharedPreference.setBool(Preferences.is_logged_in, value);
  }

  // Theme:------------------------------------------------------
  bool get isDarkMode {
    return sharedPreference.getBool(Preferences.is_dark_mode) ?? false;
  }

  Future<void> changeBrightnessToDark(bool value) {
    return sharedPreference.setBool(Preferences.is_dark_mode, value);
  }

  // Language:---------------------------------------------------
  int get currentLanguage {
    return sharedPreference.getInt(Preferences.current_language) ?? 1;
  }

  bool get isFirstTime {
    return sharedPreference.getBool(Preferences.isFirstTime) ?? true;
  }

  setIsFirstTime(bool value) async {
    await sharedPreference.setBool(Preferences.isFirstTime, value);
  }

  setIsGuest(bool value) async {
    await sharedPreference.setBool(Preferences.isGuest, value);
    if (value) {
      await sharedPreference.remove(Preferences.auth_token);
    }
  }

  bool get isGuest {
    return sharedPreference.getBool(Preferences.isGuest) ?? false;
  }

  String? get currentCountry {
    return sharedPreference.getString(Preferences.currentCountry);
  }

  String? get loggedInPhoneNo {
    return sharedPreference.getString(Preferences.loggedInPhoneNo);
  }

  setLoggedInPhoneNo(String value) async {
    await sharedPreference.setString(Preferences.loggedInPhoneNo, value);
  }

  setCountry(String value) async {
    await sharedPreference.setString(Preferences.currentCountry, value);
  }

  String? get currentCurrency {
    return sharedPreference.getString(Preferences.currentCurrency);
  }

  setCurrency(String value) async {
    await sharedPreference.setString(Preferences.currentCurrency, value);
  }

  Future<void> changeLanguage(int language) {
    return sharedPreference.setInt(Preferences.current_language, language);
  }

  saveSportList(List<String> list) async {
    await sharedPreference.remove(Preferences.sportList);
    await sharedPreference.setStringList(Preferences.sportList, list);
  }

  savePositionList(List<String> list) async {
    await sharedPreference.remove(Preferences.positionList);
    await sharedPreference.setStringList(Preferences.positionList, list);
  }

////////////
  saveConfigList(List<String> list) async {
    await sharedPreference.remove(Preferences.config);
    await sharedPreference.setStringList(Preferences.config, list);
  }

  List<String> getConfigList() {
    return sharedPreference.getStringList(Preferences.config) ?? [];
  }

  saveCategoryList(List<String> list) async {
    await sharedPreference.remove(Preferences.category);
    await sharedPreference.setStringList(Preferences.category, list);
  }

  List<String> getCategoryList() {
    return sharedPreference.getStringList(Preferences.category) ?? [];
  }

  saveSubCategoryList(List<String> list) async {
    await sharedPreference.remove(Preferences.subCategory);
    await sharedPreference.setStringList(Preferences.subCategory, list);
  }

  List<String> getSubCategoryList() {
    return sharedPreference.getStringList(Preferences.subCategory) ?? [];
  }

  saveSizeList(List<String> list) async {
    await sharedPreference.remove(Preferences.sizes);
    await sharedPreference.setStringList(Preferences.sizes, list);
  }

  List<String> getSizeList() {
    return sharedPreference.getStringList(Preferences.sizes) ?? [];
  }

  saveCountryList(List<String> list) async {
    await sharedPreference.remove(Preferences.country);
    await sharedPreference.setStringList(Preferences.country, list);
  }

  List<String> getCountryList() {
    return sharedPreference.getStringList(Preferences.country) ?? [];
  }

  saveCoverTypeList(List<String> list) async {
    await sharedPreference.remove(Preferences.cover);
    await sharedPreference.setStringList(Preferences.cover, list);
  }

  List<String> getCoverTypeList() {
    return sharedPreference.getStringList(Preferences.cover) ?? [];
  }

  saveCurrencyList(List<String> list) async {
    await sharedPreference.remove(Preferences.currency);
    await sharedPreference.setStringList(Preferences.currency, list);
  }

  List<String> getCurrencyList() {
    return sharedPreference.getStringList(Preferences.currency) ?? [];
  }

  saveLayoutList(List<String> list) async {
    await sharedPreference.remove(Preferences.layout);
    await sharedPreference.setStringList(Preferences.layout, list);
  }

  List<String> getLayoutList() {
    return sharedPreference.getStringList(Preferences.layout) ?? [];
  }

  // List<PositionModel> getPositionList() {
  //   List<String> list =
  //       sharedPreference.getStringList(Preferences.positionList) ?? [];
  //   List<PositionModel> positionList = [];
  //   for (var data in list) {
  //     positionList.add(PositionModel.fromJson(jsonDecode(data)));
  //   }

  //   return positionList;
  // }

  // List<Sport> getSportsList() {
  //   List<String> list =
  //       sharedPreference.getStringList(Preferences.sportList) ?? [];
  //   List<Sport> sportList = [];
  //   for (var data in list) {
  //     sportList.add(Sport.fromJson(jsonDecode(data)));
  //   }

  //   return sportList;
  // }

  // saveGenderList(List<String> list) async {
  //   await sharedPreference.remove(Preferences.genderList);
  //   await sharedPreference.setStringList(Preferences.genderList, list);
  // }

  // List<GenderModel> getGenderList() {
  //   List<String> list =
  //       sharedPreference.getStringList(Preferences.genderList) ?? [];
  //   List<GenderModel> genderList = [];
  //   for (var data in list) {
  //     genderList.add(GenderModel.fromJson(jsonDecode(data)));
  //   }

  //   return genderList;
  // }

  // savePrivacyList(List<String> list) async {
  //   await sharedPreference.remove(Preferences.privacyList);
  //   await sharedPreference.setStringList(Preferences.privacyList, list);
  // }

  // List<AreaModel> getAreaList() {
  //   List<String> list =
  //       sharedPreference.getStringList(Preferences.areaList) ?? [];
  //   List<AreaModel> areaList = [];
  //   for (var data in list) {
  //     areaList.add(AreaModel.fromJson(jsonDecode(data)));
  //   }

  //   return areaList;
  // }

  // saveAreaList(List<String> list) async {
  //   await sharedPreference.remove(Preferences.areaList);
  //   await sharedPreference.setStringList(Preferences.areaList, list);
  // }

  // List<PrivacyModel> getPrivacyList() {
  //   List<String> list =
  //       sharedPreference.getStringList(Preferences.privacyList) ?? [];
  //   List<PrivacyModel> privacyList = [];
  //   for (var data in list) {
  //     privacyList.add(PrivacyModel.fromJson(jsonDecode(data)));
  //   }

  //   return privacyList;
  // }
}
