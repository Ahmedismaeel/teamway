import 'package:core/core.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:dio/dio.dart';

listHelper<T>(
    {required list, required T Function(Map<String, dynamic>) fromJson}) {
  List<T> items = [];
  list.forEach((item) {
    items.add(fromJson(item));
  });

  return items;
}

extension ApiHelper on String {
  test() async {
    final response = await DioClient.instance.get(this);
    return response.data;
  }

  Future<T> get<T>({required T Function(Map<String, dynamic>) fromJson}) async {
    final response = await DioClient.instance.get(this);
    return fromJson(response.data);
  }

  Future<List<T>> getList<T>(
      {required T Function(Map<String, dynamic>) fromJson}) async {
    final response = await DioClient.instance.get(this);
    return listHelper<T>(fromJson: fromJson, list: response.data);
  }

  // post<T>({required body}) {}
}

postHelper(state,
    {required String url, required body, required onSuccess}) async {
  SmartDialog.showLoading();
  state = SubmitState.loading();
  try {
    final response = await DioClient.instance
        .post(url, data: body is List ? body : body.toJson());
    onSuccess(response.data);
    SmartDialog.dismiss();
    return response;
  } catch (e) {
    SmartDialog.dismiss();
    toastLong(errorHandler(e));
    state = SubmitState.failed(message: errorHandler(e));
  }
}

putHelper(state,
    {required String url, required body, required onSuccess}) async {
  SmartDialog.showLoading();
  state = SubmitState.loading();
  try {
    final response = await DioClient.instance
        .put(url, data: body is List ? body : body.toJson());
    onSuccess(response.data);
    SmartDialog.dismiss();
    return response;
  } catch (e) {
    SmartDialog.dismiss();
    toastLong(errorHandler(e));
    state = SubmitState.failed(message: errorHandler(e));
  }
}

getHelper(state, {required String url, required onSuccess}) async {
  SmartDialog.showLoading();
  state = SubmitState.loading();
  try {
    final response = await DioClient.instance.get(url);
    onSuccess(response.data);
    SmartDialog.dismiss();
    return response;
  } catch (e) {
    SmartDialog.dismiss();
    toastLong(errorHandler(e));
    state = SubmitState.failed(message: errorHandler(e));
  }
}

deleteHelper(state, {required String url, required onSuccess}) async {
  SmartDialog.showLoading();
  state = SubmitState.loading();
  try {
    final response = await DioClient.instance.delete(url);
    onSuccess(response.data);
    SmartDialog.dismiss();
    return response;
  } catch (e) {
    SmartDialog.dismiss();

    state = SubmitState.failed(message: errorHandler(e));
    toastLong(errorHandler(e));
  }
}

postFormDataHelper(state,
    {required String url, required body, required onSuccess}) async {
  SmartDialog.showLoading();
  state = SubmitState.loading();
  try {
    final response = await DioClient.instance.post(url,
        data: body,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}));
    await onSuccess(response.data);
    SmartDialog.dismiss();
    return response;
  } catch (e) {
    SmartDialog.dismiss();
    toastLong(errorHandler(e), bgColor: UiColors.error);
    state = SubmitState.failed(message: errorHandler(e));
  }
}

putFormDataHelper(state,
    {required String url, required body, required onSuccess}) async {
  SmartDialog.showLoading();
  state = SubmitState.loading();
  try {
    final response = await DioClient.instance.put(url,
        data: body,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}));
    onSuccess(response.data);
    SmartDialog.dismiss();
    return response;
  } catch (e) {
    SmartDialog.dismiss();
    toastLong(errorHandler(e));
    state = SubmitState.failed(message: errorHandler(e));
  }
}
