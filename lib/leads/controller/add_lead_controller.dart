import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_lead_controller.g.dart';

@riverpod
class AddLead extends _$AddLead {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  add(
      {String? company_name,
      String? address,
      required String? phone,
      String? email,
      String? website,
      String? vat_number,
      required String? lead_status_id,
      required String? lead_source_id,
      required String? owner_id,
      required String? met,
      String? solution_labels,
      required String? contact_date,
      required String? contacted,
      String? next_follow_up,
      String? price}) async {
    "${{
      "company_name": company_name,
      "address": address,
      "phone": phone,
      "email": email,
      "website": website,
      "vat_number": vat_number,
      "lead_status_id": lead_status_id,
      "lead_source_id": lead_source_id,
      "owner_id": owner_id,
      "met": met,
      "solution_labels": solution_labels,
      "contact_date": contact_date,
      "contacted": contacted,
      "next_follow_up": next_follow_up,
      "price": price,
    }}"
        .log();

    state = const SubmitState.initial();
    FormData formData = FormData.fromMap({
      "company_name": company_name,
      "address": address,
      "phone": phone,
      "email": email,
      "website": website,
      "vat_number": vat_number,
      "lead_status_id": lead_status_id,
      "lead_source_id": lead_source_id,
      "owner_id": owner_id,
      "met": met,
      "solution_labels": solution_labels,
      "contact_date": contact_date,
      "contacted": contacted,
      "next_follow_up": next_follow_up,
      "price": price,
    });

    await postFormDataHelper(state,
        url: EndPoints.addUpdateLead, body: formData, onSuccess: (data) {
      "test".log();
      state = const SubmitState.success(response: 0);
      // ref.invalidate(provider)
    });
  }
}
