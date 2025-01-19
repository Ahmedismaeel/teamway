import 'dart:async';
import 'dart:io';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path_provider/path_provider.dart';

Future<String?> getDownloadPath() async {
  Directory? directory;
  try {
    if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    } else {
      directory = Directory('/storage/emulated/0/Download');
      if (!await directory.exists()) {
        directory = await getApplicationDocumentsDirectory();
      }
    }
  } catch (err, stack) {
    print("Cannot get download folder path");
  }
  return directory?.path;
}

Future<File> getFileFromUrl(String fileUrl) async {
  Completer<File> completer = Completer();
  try {
    final url = fileUrl;
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    var path = await getDownloadPath();
    File file = File("$path/$filename");

    await file.writeAsBytes(bytes, flush: true);
    completer.complete(file);
  } catch (e) {
    throw Exception('Error parsing asset file!');
  }

  return completer.future;
}

Future<File> getFileFromUrlWithName(String fileUrl, String name) async {
  Completer<File> completer = Completer();
  try {
    final url = fileUrl;
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    var path = await getDownloadPath();
    File file = File("$path/$name");

    await file.writeAsBytes(bytes, flush: true);
    completer.complete(file);
  } catch (e) {
    throw Exception('Error parsing asset file!');
  }

  return completer.future;
}

downloadFile({required String url, required String fileName}) async {
  try {
    SmartDialog.showLoading();
    final response = await DioClient.instance
        .get(url, options: Options(responseType: ResponseType.bytes));
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/$fileName').create();
    file.writeAsBytesSync(Uint8List.fromList(response.data));
    await OpenFile.open(file.path);
    SmartDialog.dismiss();
  } catch (e) {
    SmartDialog.dismiss();
    toast("Failed To Download the file");
  }
}
