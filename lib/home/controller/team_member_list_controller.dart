import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'team_member_list_controller.g.dart';

@riverpod
Future<List<MemberModel>> getTeamMember(GetTeamMemberRef ref) async {
  final response = await DioClient.instance.get(EndPoints.teamMemberList);
  "".log();
  List<MemberModel> list = [];
  response.data.forEach((item) {
    list.add(MemberModel.fromJson(item));
  });
  return list;
}
