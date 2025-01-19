import 'package:core/core.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/task/controller/comment_check_list_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_check_list_controller.g.dart';

@riverpod
class UpdateCheckList extends _$UpdateCheckList {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  updateCheckList({required int status, required String checkListId}) {
    "".log();
    getHelper(state, url: EndPoints.updateCheckList(status, checkListId),
        onSuccess: (onSuccess) {
      ref.invalidate(commentAndCheckListProvider);
      state = SubmitState.success(response: 0);
    });
  }
}
