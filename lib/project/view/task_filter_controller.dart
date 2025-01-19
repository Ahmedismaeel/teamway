import 'package:core/core.dart';
import 'package:internal_app/home/controller/status_list_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/home/model/status_model.dart';
import 'package:internal_app/project/view/task_filter_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_filter_controller.g.dart';

@riverpod
class StatusFilter extends _$StatusFilter {
  @override
  List<StatusModel> build() {
    // final list = getStatusList();
    // try {
    //   return [
    //     list.firstWhere((item) => item.id == "1"),
    //     list.firstWhere((item) => item.id == "2"),
    //     list.firstWhere((item) => item.id == "4")
    //   ];
    // } catch (e) {}

    return toObjectList(SharedPreferenceHelper.instance.taskStatusFilterList,
        StatusModel.fromJson);
  }

  bool isSelected(StatusModel mode) {
    try {
      state.firstWhere((element) => element.id == mode.id);
      return true;
    } catch (e) {
      return false;
    }
  }

  addOrRemove(StatusModel mode) {
    final list = state;
    try {
      list.firstWhere((element) => element.id == mode.id);

      list.removeWhere((element) => element.id == mode.id);
    } catch (e) {
      list.add(mode);
    }

    state = [...list];
    SharedPreferenceHelper.instance
        .saveTaskStatusFilterList(toStringList(list));
  }
}

@riverpod
class MemberFilter extends _$MemberFilter {
  @override
  List<MemberModel> build() {
    return toObjectList(SharedPreferenceHelper.instance.taskMembersFilterList,
        MemberModel.fromJson);
  }

  bool isSelected(MemberModel mode) {
    try {
      state.firstWhere((element) => element.id == mode.id);
      return true;
    } catch (e) {
      return false;
    }
  }

  addAll(List<MemberModel> list) {
    state = list;
    SharedPreferenceHelper.instance
        .saveTaskMembersFilterList(toStringList(list));
  }

  addOrRemove(MemberModel mode) {
    final list = state;
    try {
      list.firstWhere((element) => element.id == mode.id);

      list.removeWhere((element) => element.id == mode.id);
    } catch (e) {
      list.add(mode);
    }

    state = [...list];
  }
}
