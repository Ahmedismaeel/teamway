import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/duo_amount_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_duo_amount_controller.g.dart';

@riverpod
Future<DuoAmountModel> getDuoAmount(GetDuoAmountRef ref,
    {required String projectId}) async {
  return await EndPoints.projectDuoAmount(projectId)
      .get<DuoAmountModel>(fromJson: DuoAmountModel.fromJson);
}
