import 'dart:io';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/controller/get_project_file_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_file_controller.g.dart';

class FileDescription {
  final File file;
  final String description;

  FileDescription({required this.file, required this.description});
}

@riverpod
class AddProjectsFile extends _$AddProjectsFile {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  addFiles(
      {required List<FileDescription> files,
      required bool isPrivate,
      required projectId}) async {
    "".log();
    FormData body = FormData.fromMap({"isPrivate": isPrivate});
    for (var i = 0; i < files.length; i++) {
      body.files.add(MapEntry(
          "manualFiles[$i]",
          MultipartFile.fromBytes(await files[i].file.readAsBytes(),
              filename: files[i].file.path.split('/').last)));
      body.fields.add(MapEntry("description[$i]", files[i].description));
    }

    await postFormDataHelper(state,
        url: EndPoints.addProjectFiles(projectId),
        body: body, onSuccess: (onSuccess) {
      state = const SubmitState.success(response: 0);
      ref.invalidate(projectFileListProvider);
    });
  }
}
