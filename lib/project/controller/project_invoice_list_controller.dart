import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/project/model/project_invoice_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_invoice_list_controller.g.dart';

@riverpod
Future<List<ProjectInvoiceModel>> projectInvoiceList(ProjectInvoiceListRef ref,
    {required String projectId}) async {
  return await EndPoints.projectInvoiceList(projectId)
      .getList<ProjectInvoiceModel>(fromJson: ProjectInvoiceModel.fromJson);
}
