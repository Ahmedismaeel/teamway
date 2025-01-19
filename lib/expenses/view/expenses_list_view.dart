import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/expenses/controller/get_expenses_list_controller.dart';
import 'package:internal_app/expenses/model/dropdown_model.dart';
import 'package:internal_app/expenses/model/expense_model.dart';
import 'package:internal_app/expenses/view/create_expense_view.dart';
import 'package:internal_app/expenses/view/expenses_details_view.dart';
import 'package:internal_app/expenses/view/expenses_view.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:internal_app/global/helper/api_helper.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:nb_utils/nb_utils.dart';

class ExpensesList extends ConsumerStatefulWidget {
  const ExpensesList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExpensesListState();
}

class _ExpensesListState extends ConsumerState<ExpensesList> {
  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  setFromDate() async {
    final s = await showDatePicker(
        initialDate: fromDate,
        context: context,
        firstDate: DateTime(1999),
        lastDate: DateTime(2222));
    if (s != null) {
      fromDate = s;
      setState(() {});
    }
  }

  setEndDate() async {
    final s = await showDatePicker(
        initialDate: toDate,
        context: context,
        firstDate: fromDate,
        lastDate: DateTime(2222));
    if (s != null) {
      toDate = s;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.white,
      floatingActionButton: InkWell(
        onTap: () {
          const CreateExpenseView()
              .launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
        },
        child: Container(
          decoration: boxDecorationDefault(
              shape: BoxShape.circle, color: UiColors.primary),
          padding: const EdgeInsets.all(12),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                size: 30,
                color: UiColors.white,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            5.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "From: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    5.width,
                    Container(
                      decoration: boxDecorationDefault(),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 20,
                            color: UiColors.primary,
                          ),
                          5.width,
                          Text(fromDate.toDate()),
                        ],
                      ),
                    )
                  ],
                ).onTap(() {
                  setFromDate();
                }),
                Row(
                  children: [
                    Text(
                      "To: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    5.width,
                    Container(
                        decoration: boxDecorationDefault(),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 20,
                              color: UiColors.primary,
                            ),
                            5.width,
                            Text(
                              toDate.toDate(),
                            ),
                          ],
                        ))
                  ],
                ).onTap(() {
                  setEndDate();
                })
              ],
            ),
            8.height,
            ProviderHelperWidget(
                loadingShape: ListView.builder(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ExpenseCard(
                        amount: "000",
                        category: 'Category Name',
                        date: DateTime.now().toDate(),
                        title: 'Title',
                        paymentMode: 'Payment Mode',
                        teamMember: 'User Name',
                        status: 'status',
                      );
                    }),
                function: (model) {
                  return model.data?.isNotEmpty == true
                      ? ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: model.data?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            final expense = model.data?[index];
                            return ExpenseCard(
                              amount: expense?.amount ?? "",
                              category: '${expense?.category_name}',
                              date: '${expense?.expense_date}',
                              title: '${expense?.title}',
                              paymentMode: '${expense?.payment_mode}',
                              teamMember: '${expense?.linked_user_name}',
                              status: '${expense?.status}',
                            ).onTap(() {
                              ExpenseDetailsView(expense: expense!).launch(
                                  context,
                                  pageRouteAnimation: PageRouteAnimation.Fade);
                            });
                          },
                        )
                      : Center(child: Text("No Data Found"));
                },
                listener: ref.watch(getExpensesListProvider(
                    fromDate: fromDate, toDate: toDate))),
            12.height
          ],
        ),
      ),
    );
  }
}

class ExpenseCard extends StatelessWidget {
  final String title;
  final String paymentMode;
  final String teamMember;
  final String category;
  final String amount;
  final String date;
  final String description;
  final String status;

  ExpenseCard({
    required this.category,
    required this.amount,
    required this.date,
    this.description = '',
    required this.title,
    required this.paymentMode,
    required this.teamMember,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(
          border: Border.all(color: UiColors.black.withOpacity(0.1))),
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: CustomStyle.p18,
              ),
              Text(
                paymentMode,
                style: CustomStyle.p18,
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$amount',
                style: CustomStyle.pBold.copyWith(
                  color: Colors.redAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                decoration: boxDecorationDefault(
                    borderRadius: BorderRadius.circular(40)),
                child: Text("$status"),
              )
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                teamMember,
                style: CustomStyle.n,
              ),
              Text(
                date,
                style: CustomStyle.n,
              ),
            ],
          ),
          // SizedBox(height: 10.0),
          // Text(
          //   description,
          //   style: TextStyle(
          //     fontSize: 16.0,
          //     color: Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
