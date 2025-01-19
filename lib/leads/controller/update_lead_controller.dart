import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/leads/controller/lead_by_id_controller.dart';
import 'package:internal_app/leads/models/lead_model.dart';
import 'package:internal_app/leads/models/lead_status_model.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_lead_controller.g.dart';

@riverpod
class UpdateLead extends _$UpdateLead {
  @override
  SubmitState<int> build() {
    return const SubmitState.initial();
  }

  editLead(
      {required String id,
      String? company_name,
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
    state = const SubmitState.initial();
    FormData formData = FormData.fromMap({
      "id": id,
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
      state = const SubmitState.success(response: 0);
      ref.invalidate(getLeadByIdProvider(leadId: id.toInt()));
    });
  }

  updateFollowUpDate(
      {required Content lead, required String followUpDate}) async {
    "${{
      "id": lead.id,
      "company_name": lead.companyName,
      "address": lead.address,
      "phone": lead.phone,
      "email": lead.email,
      "website": lead.website,
      "vat_number": lead.vatNumber,
      "lead_status_id": lead.status?.id,
      "lead_source_id": lead.leadSourceId,
      "owner_id": lead.owner?.id,
      "met": lead.met,
      "solution_labels": lead.solutionLabels,
      "contact_date": lead.contactDate,
      "contacted": lead.contacted,
      "next_follow_up": followUpDate,
      "price": lead.price,
    }}"
        .log();
    FormData formData = FormData.fromMap({
      "id": lead.id,
      "company_name": lead.companyName,
      "address": lead.address,
      "phone": lead.phone,
      "email": lead.email,
      "website": lead.website,
      "vat_number": lead.vatNumber,
      "lead_status_id": lead.status?.id,
      "lead_source_id": lead.leadSourceId,
      "owner_id": lead.owner?.id,
      "met": lead.met,
      "solution_labels": lead.solutionLabels,
      "contact_date": lead.contactDate,
      "contacted": lead.contacted,
      "next_follow_up": followUpDate,
      "price": lead.price,
    });

    await postFormDataHelper(state,
        url: EndPoints.addUpdateLead, body: formData, onSuccess: (data) {
      state = const SubmitState.success(response: 0);
      ref.invalidate(getLeadByIdProvider(leadId: lead.id.toInt()));
    });
  }

  updateStatus({required Content lead, required LeadStatusModel status}) async {
    FormData formData = FormData.fromMap({
      "id": lead.id,
      "company_name": lead.companyName,
      "address": lead.address,
      "phone": lead.phone,
      "email": lead.email,
      "website": lead.website,
      "vat_number": lead.vatNumber,
      "lead_status_id": status.id,
      "lead_source_id": lead.leadSourceId,
      "owner_id": lead.owner?.id,
      "met": lead.met,
      "solution_labels": lead.solutionLabels,
      "contact_date": lead.contactDate,
      "contacted": lead.contacted,
      "next_follow_up": lead.nextFollowUp,
      "price": lead.price,
    });

    await postFormDataHelper(state,
        url: EndPoints.addUpdateLead, body: formData, onSuccess: (data) {
      state = const SubmitState.success(response: 0);
      ref.invalidate(getLeadByIdProvider(leadId: lead.id.toInt()));
    });
  }
}
