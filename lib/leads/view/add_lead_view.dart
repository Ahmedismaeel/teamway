import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/expenses/view/create_expense_view.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/shared/apis.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/home/controller/team_member_list_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/leads/controller/add_lead_controller.dart';
import 'package:internal_app/leads/controller/leads_status_controller.dart';
import 'package:internal_app/leads/models/lead_source_model.dart';
import 'package:internal_app/leads/models/lead_status_model.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

class AddLeadView extends ConsumerStatefulWidget {
  const AddLeadView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddLeadViewState();
}

class _AddLeadViewState extends ConsumerState<AddLeadView> {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  List<String> metList = ['no', 'face-to-face', 'online'];
  List<String> contactedList = ['instagram', 'whatsapp', 'call', 'no'];
  TextEditingController controller = TextEditingController();
  bool show = false;
  changeShow() {
    show = !show;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Lead"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Stack(
            children: [
              FormBuilder(
                  key: formKey,
                  child: ListView(children: [
                    const TitleWidget(title: "Name"),
                    FormBuilderTextField(
                      name: "companyName",
                      cursorHeight: 20,
                      cursorWidth: 1,
                      //autofocus: true,
                      controller: controller, keyboardType: TextInputType.text,
                      minLines: 1,
                      textInputAction: TextInputAction.done,
                      decoration: editTextDecoration(),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Name is required"),
                      ]),
                    ),
                    12.height,
                    const TitleWidget(title: "Phone"),
                    FormBuilderTextField(
                      name: "phone",
                      cursorHeight: 20,
                      cursorWidth: 1,
                      //autofocus: true,
                      minLines: 1,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.done,
                      decoration: editTextDecoration(),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Phone is required"),
                      ]),
                    ),
                    12.height,
                    Row(
                      children: [
                        Icon(Icons.add),
                        5.width,
                        Text(
                          "Load More",
                          style: CustomStyle.pBold.copyWith(
                              color: show ? UiColors.primary : UiColors.black),
                        ).onTap(() {
                          changeShow();
                        }),
                      ],
                    ),
                    12.height,
                    show
                        ? Column(
                            children: [
                              TitleWidget(title: "Contact date"),
                              FormBuilderDateTimePicker(
                                inputType: InputType.date,
                                initialValue: DateTime.now(),
                                name: "contactDate",
                                format: DateFormat("dd-MM-yyyy"),
                                decoration: editTextDecoration(),
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Contact Date is required"),
                                // ]),
                              ),
                              12.height,
                              const TitleWidget(title: "Contact Type"),
                              FormBuilderDropdown<String>(
                                // validator: FormBuilderValidators.required(),
                                decoration: editTextDecoration(),
                                onChanged: (cate) {
                                  // setCategory(cate);
                                },
                                name: 'contactId',
                                initialValue: null,
                                items: contactedList
                                    .map((option) => DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: option,
                                          child:
                                              Text(option.capitalizeEachWord()),
                                        ))
                                    .toList(),
                              ),
                              12.height,
                              TitleWidget(title: "Lead Status"),
                              FormBuilderDropdown<LeadStatusModel>(
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Lead Status is required"),
                                // ]),
                                decoration: editTextDecoration(),
                                onChanged: (cate) {
                                  // setCategory(cate);
                                },
                                name: 'leadStatus',
                                initialValue: null,
                                items: InitApis.leadStatusList
                                    .map((option) => DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: option,
                                          child: Text(option.title ?? "-"),
                                        ))
                                    .toList(),
                              ),
                              12.height,
                              TitleWidget(title: "Owner"),
                              ProviderHelperWidget(
                                  loadingShape: FormBuilderTextField(
                                    decoration: editTextDecoration(),
                                    name: '',
                                  ),
                                  function: (list) {
                                    return FormBuilderDropdown<MemberModel>(
                                      // validator: FormBuilderValidators.required(),
                                      decoration: editTextDecoration(),
                                      onChanged: (cate) {
                                        // setCategory(cate);
                                      },
                                      name: 'owner',
                                      initialValue: MemberModel(
                                          id: getProfile()?.id ?? 0,
                                          title:
                                              "${getProfile()?.first_name} ${getProfile()?.last_name}"),
                                      items: list
                                          .map((option) => DropdownMenuItem(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                value: option,
                                                child:
                                                    Text(option.title ?? "-"),
                                              ))
                                          .toList(),
                                    );
                                  },
                                  listener: ref.watch(getTeamMemberProvider)),
                              12.height,
                              const TitleWidget(title: "Met"),
                              FormBuilderDropdown<String>(
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Met is required"),
                                // ]),
                                decoration: editTextDecoration(),
                                onChanged: (cate) {
                                  // setCategory(cate);
                                },
                                name: 'met',
                                initialValue: null,
                                items: metList
                                    .map((option) => DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: option,
                                          child:
                                              Text(option.capitalizeEachWord()),
                                        ))
                                    .toList(),
                              ),
                              12.height,
                              const TitleWidget(title: "Email"),
                              FormBuilderTextField(
                                name: "email",
                                cursorHeight: 20,
                                cursorWidth: 1,
                                //autofocus: true,
                                minLines: 1,
                                textInputAction: TextInputAction.done,
                                decoration: editTextDecoration(),
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Email is required"),
                                // ]),
                              ),
                              12.height,
                              const TitleWidget(title: "Address"),
                              FormBuilderTextField(
                                name: "address",
                                cursorHeight: 20,
                                cursorWidth: 1,
                                //autofocus: true,
                                minLines: 1,
                                textInputAction: TextInputAction.done,
                                decoration: editTextDecoration(),
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Address is required"),
                                // ]),
                              ),
                              12.height,
                              const TitleWidget(title: "Website"),
                              FormBuilderTextField(
                                name: "website",
                                cursorHeight: 20,
                                cursorWidth: 1,
                                //autofocus: true,
                                minLines: 1,
                                textInputAction: TextInputAction.done,
                                decoration: editTextDecoration(),
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Website is required"),
                                // ]),
                              ),
                              12.height,
                              const TitleWidget(title: "Vat Number"),
                              FormBuilderTextField(
                                name: "vatNumber",
                                cursorHeight: 20,
                                cursorWidth: 1,
                                //autofocus: true,
                                minLines: 1,
                                textInputAction: TextInputAction.done,
                                decoration: editTextDecoration(),
                                // validator: FormBuilderValidators.compose([
                                //   FormBuilderValidators.required(
                                //       errorText: "Vat Number is required"),
                                // ]),
                              ),
                              12.height,
                              TitleWidget(title: "Lead Source"),
                              ProviderHelperWidget(
                                  loadingShape: FormBuilderTextField(
                                    decoration: editTextDecoration(),
                                    name: '',
                                  ),
                                  function: (list) {
                                    return FormBuilderDropdown<LeadSourceModel>(
                                      // validator: FormBuilderValidators.required(),
                                      decoration: editTextDecoration(),
                                      onChanged: (cate) {},
                                      name: 'leadSource',
                                      initialValue: null,
                                      items: list
                                          .map((option) => DropdownMenuItem(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                value: option,
                                                child:
                                                    Text(option.title ?? "-"),
                                              ))
                                          .toList(),
                                    );
                                  },
                                  listener: ref.watch(leadSourceListProvider)),
                              12.height,
                              const TitleWidget(title: "Solution"),
                              FormBuilderTextField(
                                name: "solution",
                                cursorHeight: 20,
                                cursorWidth: 1,
                                //autofocus: true,
                                minLines: 1,
                                textInputAction: TextInputAction.done,
                                decoration: editTextDecoration(),
                              ),
                              12.height,
                              TitleWidget(title: "Next Follow Up"),
                              FormBuilderDateTimePicker(
                                inputType: InputType.date,
                                initialValue: DateTime.now(),
                                name: "nextFollowUp",
                                format: DateFormat("dd-MM-yyyy"),
                                decoration: editTextDecoration(),
                              ),
                              12.height,
                              const TitleWidget(title: "Price"),
                              FormBuilderTextField(
                                name: "price",
                                cursorHeight: 20,
                                cursorWidth: 1,
                                //autofocus: true,
                                keyboardType: TextInputType.number,
                                minLines: 1,
                                textInputAction: TextInputAction.done,
                                decoration: editTextDecoration(),
                              ),
                              60.height,
                            ],
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                        width: 200,
                        child: Lottie.asset("assets/lottie/lead.json"))
                  ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SubmitWidget(
                      onTap: (ref) async {
                        if (formKey.currentState?.validate() != true) {
                          formKey.currentState?.saveAndValidate();

                          return;
                        }
                        "success".log();

                        await ref.read(addLeadProvider.notifier).add(
                            company_name: controller.text,
                            address: formKey.currentState?.fields['address']?.value
                                .toString(),
                            phone: formKey.currentState?.fields['phone']?.value
                                .toString(),
                            email: formKey.currentState?.fields['email']?.value
                                .toString(),
                            website: formKey.currentState?.fields['website']?.value
                                .toString(),
                            vat_number: formKey.currentState?.fields['vat_number']?.value
                                .toString(),
                            lead_status_id: formKey
                                .currentState?.fields['leadStatus']?.value?.id
                                .toString(),
                            lead_source_id: formKey
                                .currentState?.fields['leadSource']?.value?.id
                                .toString(),
                            owner_id: (formKey.currentState?.fields['owner']?.value?.id ??
                                    getProfile()?.id)
                                .toString(),
                            met: formKey.currentState?.fields['met']?.value.toString(),
                            solution_labels: formKey.currentState?.fields['solution']?.value.toString(),
                            contact_date: (formKey.currentState?.fields['contactDate']?.value as DateTime?).toDateApi().toString(),
                            contacted: formKey.currentState?.fields['contactId']?.value.toString(),
                            next_follow_up: (formKey.currentState?.fields['nextFollowUp']?.value as DateTime?).toDateApi().toString(),
                            price: formKey.currentState?.fields['price']?.value);
                      },
                      provider: addLeadProvider,
                      child: RowButton(
                        text: "Submit",
                      ),
                      onSuccess: (onSuccess) {
                        "onSuccess".log();
                        CustomDialog.successDialog(
                          context,
                          okFunction: () {
                            SmartDialog.dismiss();
                            Navigator.pop(context);
                          },
                          successMessage:
                              'Your Lead has been created Successfully',
                        );
                      },
                      onFailed: (onFailed) {}),
                  12.height
                ],
              )
            ],
          ),
        ));
  }
}
