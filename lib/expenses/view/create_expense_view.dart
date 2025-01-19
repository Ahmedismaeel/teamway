import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internal_app/expenses/controller/create_expenses_controller.dart';
import 'package:internal_app/expenses/controller/dropdown_controller.dart';
import 'package:internal_app/expenses/controller/get_category_dropdown_controller.dart';
import 'package:internal_app/expenses/controller/get_category_items_controller.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/expenses/model/dropdown_string.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/dialog_widget.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/helper/widget_submit_helper.dart';
import 'package:internal_app/global/widgets/choose_widget.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/edit_text.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/home/controller/team_member_list_controller.dart';
import 'package:internal_app/home/model/member_model.dart';
import 'package:internal_app/home/model/project_model.dart';
import 'package:internal_app/project/controller/get_project_list_controller.dart';
import 'package:internal_app/task/view/create_task_view.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

class CreateExpenseView extends ConsumerStatefulWidget {
  const CreateExpenseView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateExpenseViewState();
}

class _CreateExpenseViewState extends ConsumerState<CreateExpenseView> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController cheque_account = TextEditingController();
  TextEditingController cheque_due_date = TextEditingController();
  TextEditingController cheque_number = TextEditingController();

  DateTime? chequeDate;
  setStartDate(BuildContext context) async {
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: chequeDate ?? DateTime.now(),
        lastDate: DateTime(2222));
    if (date == null) {
      return;
    }
    chequeDate = date;
    setState(() {});
  }

  DateTime? expenseDate = DateTime.now();
  setExpenseDate(BuildContext context) async {
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime(1999),
        firstDate: chequeDate ?? DateTime.now(),
        lastDate: DateTime(2222));
    if (date == null) {
      return;
    }
    expenseDate = date;
    setState(() {});
  }

  DropDownStringModel? paymentMode;
  setPaymentMode(DropDownStringModel? payment) {
    paymentMode = payment;
    setState(() {});
  }

  DropdownModel? category;
  setCategory(DropdownModel? item) {
    category = item;
    catItem = null;

    setState(() {});
  }

  DropdownModel? catItem;
  setItem(DropdownModel item) {
    catItem = item;
    setState(() {});
  }

  DropdownModel? tax;
  setTax(DropdownModel item) {
    tax = item;
    setState(() {});
  }

  DropdownModel? bank;
  setBank(DropdownModel item) {
    bank = item;
    setState(() {});
  }

  DropdownModel? treasury;
  setTreasury(DropdownModel item) {
    treasury = item;
    setState(() {});
  }

  ProjectModel? project;
  setProject(ProjectModel item) {
    project = item;
    setState(() {});
  }

  List<XFile> images = [];
  Future<dynamic> bottomSheet(list) async {
    return await myDialog(
        context,
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.cancel).onTap(() {
                  SmartDialog.dismiss();
                })
              ],
            ),
            12.height,
            for (var element in list)
              RowButton(text: "${element.title}").paddingBottom(12).onTap(() {
                SmartDialog.dismiss(result: element);
              })
          ],
        ));
  }

  MemberModel member = MemberModel(
      id: getProfile()?.id ?? 0,
      title: "${getProfile()?.first_name} ${getProfile()?.last_name}");
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create expense"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: FormBuilder(
          key: formKey,
          child: ListView(
            children: [
              const TitleWidget(title: "Description"),
              FormBuilderTextField(
                controller: description,
                name: "Description",
                cursorHeight: 20,
                cursorWidth: 1,
                autofocus: true,
                minLines: 4,
                maxLines: 7,
                textInputAction: TextInputAction.done,
                decoration: editTextDecoration(),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: "Description is required"),
                ]),
              ),
              12.height,
              TitleWidget(title: "Date of expense"),

              FormBuilderDateTimePicker(
                inputType: InputType.date,
                initialValue: DateTime.now(),
                name: "expenseDate",
                format: DateFormat("dd-MM-yyyy"),
                decoration: editTextDecoration(),
              ),
              12.height,
              // ChooseWidget(
              //   title: expenseDate == null
              //       ? "Date of expense"
              //       : expenseDate.toDate(),
              // ).onTap(() {
              //   setExpenseDate(context);
              // }),

              12.height,
              TitleWidget(title: "Category"),
              ProviderHelperWidget(
                  loadingShape: FormBuilderTextField(
                    decoration: editTextDecoration(),
                    name: 'loading',
                  ),
                  function: (list) {
                    return FormBuilderDropdown<DropdownModel>(
                      validator: FormBuilderValidators.required(),
                      decoration: editTextDecoration(),
                      onChanged: (cate) {
                        setCategory(cate);
                      },
                      name: 'category',
                      initialValue: null,
                      items: list
                          .map((option) => DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                value: option,
                                child: Text(option.title ?? "-"),
                              ))
                          .toList(),
                    );
                  },
                  listener: ref.watch(getExpensesCategoryListProvider)),
              12.height,
              // TitleWidget(title: "Item"),
              ProviderHelperWidget(
                  loadingShape: FormBuilderTextField(
                    decoration: editTextDecoration(),
                    name: '',
                  ),
                  function: (list) {
                    return Column(
                      children: [
                        TitleWidget(title: "Item"),
                        FormBuilderDropdown<DropdownModel>(
                          validator: FormBuilderValidators.required(),
                          decoration: editTextDecoration(),
                          name: 'catItem',
                          initialValue: null,
                          items: list
                              .map((option) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: option,
                                    child: Text(option.title ?? "-"),
                                  ))
                              .toList(),
                        ),
                      ],
                    );
                  },
                  errorWidget: const SizedBox.shrink(),
                  listener: ref.watch(
                      getCategoryItemProvider(categoryId: category?.id ?? 0))),
              12.height,
              const TitleWidget(title: "Amount"),
              FormBuilderTextField(
                controller: amount,
                name: "Amount",
                cursorHeight: 20,
                cursorWidth: 1,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: editTextDecoration(),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              12.height,
              ProviderHelperWidget(
                  loadingShape: FormBuilderTextField(
                    decoration: editTextDecoration(),
                    name: '',
                  ),
                  function: (list) {
                    return Column(
                      children: [
                        const TitleWidget(title: "Payment Mode"),
                        FormBuilderDropdown<DropDownStringModel>(
                          validator: FormBuilderValidators.required(),
                          decoration: editTextDecoration(),
                          onChanged: (pay) {
                            setPaymentMode(pay);
                          },
                          name: 'paymentMode',
                          initialValue: null,
                          items: list
                              .map((option) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: option,
                                    child: Text(option.title ?? "-"),
                                  ))
                              .toList(),
                        ),
                      ],
                    );
                    // return ChooseWidget(
                    //   title: paymentMode?.title ?? "Payment Mode",
                    // ).onTap(() async {
                    //   DropDownStringModel? payment = await bottomSheet(list);
                    //   "$payment".log();
                    //   if (payment != null) {
                    //     setPaymentMode(payment);
                    //   }
                    // });
                  },
                  listener: ref.watch(paymentModeProvider)),
              switch (paymentMode?.id) {
                "cheque" => Column(
                    children: [
                      12.height,
                      TitleWidget(title: "Cheque Account"),
                      FormBuilderTextField(
                        controller: cheque_account,
                        name: "Cheque Account",
                        cursorHeight: 20,
                        cursorWidth: 1,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        decoration: editTextDecoration(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      12.height,
                      TitleWidget(title: "Cheque Number"),
                      FormBuilderTextField(
                        controller: cheque_account,
                        name: "Cheque Number",
                        cursorHeight: 20,
                        cursorWidth: 1,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        decoration: editTextDecoration(),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      12.height,
                      TitleWidget(title: "Cheque due date"),
                      ChooseWidget(
                        title: chequeDate == null
                            ? "Add Cheque Due Date"
                            : chequeDate.toDate(),
                      ).onTap(() {
                        setStartDate(context);
                      }),
                      12.height,
                      ProviderHelperWidget(
                          function: (list) {
                            return Column(
                              children: [
                                TitleWidget(title: "Bank"),
                                FormBuilderDropdown<DropdownModel>(
                                  // validator: FormBuilderValidators.required(),
                                  decoration: editTextDecoration(),
                                  name: 'bank',
                                  initialValue: null,
                                  items: list
                                      .map((option) => DropdownMenuItem(
                                            alignment:
                                                AlignmentDirectional.center,
                                            value: option,
                                            child: Text(option.title ?? "-"),
                                          ))
                                      .toList(),
                                )
                              ],
                            );

                            //  ChooseWidget(
                            //   title: bank?.title ?? "Banks",
                            // ).onTap(() async {
                            //   final item = await bottomSheet(list);
                            //   if (item != null) {
                            //     setBank(item);
                            //   }
                            // });
                          },
                          listener: ref.watch(bankListProvider)),
                    ],
                  ),
                "cash_on_hand" => ProviderHelperWidget(
                    function: (list) {
                      return Column(
                        children: [
                          const TitleWidget(title: "Treasury"),
                          FormBuilderDropdown<DropdownModel>(
                            validator: FormBuilderValidators.required(),
                            decoration: editTextDecoration(),
                            name: 'treasury',
                            initialValue: null,
                            items: list
                                .map((option) => DropdownMenuItem(
                                      alignment: AlignmentDirectional.center,
                                      value: option,
                                      child: Text(option.title ?? "-"),
                                    ))
                                .toList(),
                          ),
                        ],
                      );

                      return ChooseWidget(
                        title: treasury?.title ?? "Treasury",
                      ).onTap(() async {
                        final item = await bottomSheet(list);
                        if (item != null) {
                          setTreasury(item);
                        }
                      });
                    },
                    listener: ref.watch(treasuryListProvider)),
                "bank" => ProviderHelperWidget(
                    function: (list) {
                      return Column(children: [
                        12.height,
                        TitleWidget(title: "Bank"),
                        FormBuilderDropdown<DropdownModel>(
                          // validator: FormBuilderValidators.required(),
                          decoration: editTextDecoration(),
                          name: 'bank',
                          initialValue: null,
                          items: list
                              .map((option) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: option,
                                    child: Text(option.title ?? "-"),
                                  ))
                              .toList(),
                        )
                      ]);
                    },
                    listener:
                        ref.watch(bankListProvider)), // TODO: Handle this case.
                String() => SizedBox.shrink(),
                // TODO: Handle this case.
                null => SizedBox.shrink(),
              },
              12.height,
              ProviderHelperWidget(
                loadingShape: FormBuilderTextField(
                  decoration: editTextDecoration(),
                  name: '',
                ),
                function: (teamMembers) {
                  return Column(
                    children: [
                      const TitleWidget(title: "Expense Team Member"),
                      FormBuilderDropdown<MemberModel>(
                        validator: FormBuilderValidators.required(),
                        decoration: editTextDecoration(),
                        name: 'member',
                        initialValue: MemberModel(
                            id: getProfile()?.id ?? 0,
                            title:
                                "${getProfile()?.first_name} ${getProfile()?.last_name}"),
                        items: teamMembers
                            .map((option) => DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  value: option,
                                  child: Text(option.title ?? "-"),
                                ))
                            .toList(),
                      ),
                    ],
                  );
                  // return InkWell(
                  //   onTap: () async {
                  //     final selectedMember = await SmartDialog.show(
                  //         builder: (BuildContext context) {
                  //       return SelectMemberWidget(
                  //         member: member,
                  //         memberList: teamMembers,
                  //       );
                  //     });

                  //     if (selectedMember != null) {
                  //       member = selectedMember;
                  //       setState(() {});
                  //     }
                  //   },
                  //   child: ChooseWidget(title: "${member.title}"),
                  // );
                },
                listener: ref.watch(getTeamMemberProvider),
              ),
              12.height,
              ProviderHelperWidget(
                  loadingShape: FormBuilderTextField(
                    decoration: editTextDecoration(),
                    name: '',
                  ),
                  function: (listt) {
                    List<DropdownModel?> list = [null, ...listt];
                    return Column(
                      children: [
                        TitleWidget(title: "Tax"),
                        FormBuilderDropdown<DropdownModel?>(
                          // validator: FormBuilderValidators.required(),
                          decoration: editTextDecoration(),
                          name: 'tax',
                          initialValue: null,
                          items: list
                              .map((option) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: option,
                                    child: Text(option?.title ?? "-"),
                                  ))
                              .toList(),
                        ),
                      ],
                    );

                    // return ChooseWidget(
                    //   title: tax?.title ?? "Tax",
                    // ).onTap(() async {
                    //   final item = await bottomSheet(list);
                    //   if (item != null) {
                    //     setTax(item);
                    //   }
                    // });
                  },
                  listener: ref.watch(taxListProvider)),
              12.height,
              ProviderHelperWidget(
                  function: (list) {
                    return Column(
                      children: [
                        TitleWidget(title: "Project"),
                        FormBuilderDropdown<ProjectModel>(
                          // validator: FormBuilderValidators.required(),
                          decoration: editTextDecoration(),
                          name: 'project',
                          initialValue: null,
                          items: list
                              .map((option) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: option,
                                    child: Text(option.title ?? "-"),
                                  ))
                              .toList(),
                        ),
                      ],
                    );

                    // return ChooseWidget(
                    //   title: project?.title ?? "Project",
                    // ).onTap(() async {
                    //   final item = await bottomSheet(list);
                    //   if (item != null) {
                    //     setProject(item);
                    //   }
                    // });
                  },
                  listener: ref.watch(getProjectListProvider)),
              12.height,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleWidget(title: "Upload Images"),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          final image = await ImagePicker()
                              .pickImage(source: ImageSource.camera);
                          if (image == null) {
                            return;
                          }
                          images.add(image);
                          setState(() {});
                        },
                        child: Icon(
                          Icons.add_a_photo,
                          color: UiColors.primary,
                          size: 30,
                        ),
                      ),
                      18.width,
                      InkWell(
                        onTap: () async {
                          final image = await ImagePicker().pickMultiImage();
                          if (image == null) {
                            return;
                          }
                          images.addAll(image);
                          setState(() {});
                        },
                        child: Icon(
                          Icons.image,
                          color: UiColors.primary,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              8.height,
              Wrap(
                children: [
                  for (var element in images)
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          width: 60,
                          height: 60,
                          decoration: boxDecorationDefault(
                              image: DecorationImage(
                                  image: FileImage(File(element.path)))),
                          child: Container(
                            width: 60,
                            height: 60,
                            color: Colors.white.withOpacity(0.2),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  images.remove(element);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: UiColors.error,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ],
              ),
              20.height,

              SubmitWidget(
                  onTap: (ref) {
                    if (formKey.currentState?.validate() != true) {
                      formKey.currentState?.saveAndValidate();

                      return;
                    }

                    ref.read(createExpensesProvider.notifier).createExpensesApi(
                          expense_date: (formKey.currentState
                                  ?.fields['expenseDate']?.value as DateTime)
                              .toDate(),
                          amount: amount.text,
                          expense_user_id:
                              formKey.currentState?.fields['member']?.value?.id,
                          payment_mode: formKey
                              .currentState?.fields['paymentMode']?.value?.id,
                          description: description.text,
                          category_id: formKey
                              .currentState?.fields['category']?.value?.id,
                          tax_id:
                              formKey.currentState?.fields['tax']?.value?.id,
                          item_id: formKey
                              .currentState?.fields['catItem']?.value?.id,
                          bank: formKey.currentState?.fields['bank']?.value?.id,
                          cheque_account: cheque_account.text,
                          cheque_due_date: chequeDate?.toDate(),
                          cheque_number: cheque_number.text,
                          treasury: formKey
                              .currentState?.fields['treasury']?.value?.id,
                          expense_project_id: formKey
                              .currentState?.fields['project']?.value?.id,
                          manualFiles: images,
                        );
                  },
                  provider: createExpensesProvider,
                  child: RowButton(text: "Submit"),
                  onSuccess: (data) {
                    "onSuccess".log();
                    CustomDialog.successDialog(
                      context,
                      okFunction: () {
                        SmartDialog.dismiss();
                        Navigator.pop(context);
                      },
                      successMessage:
                          'Your expense has been added successfully',
                    );
                  },
                  onFailed: (error) {
                    toast(error, bgColor: UiColors.primary);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title:".capitalizeEachWord(),
          style: CustomStyle.p,
        ),
      ],
    );
  }
}
