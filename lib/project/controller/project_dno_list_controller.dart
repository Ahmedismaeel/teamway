import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/delivery_note_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_dno_list_controller.g.dart';

@riverpod
Future<List<DeliveryNoteModel>> projectDnoList(ProjectDnoListRef ref,
    {required int projectId}) async {
  return await EndPoints.projectDeliveryNote(projectId)
      .getList(fromJson: DeliveryNoteModel.fromJson);
}
