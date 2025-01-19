import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/date_time_helper.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/shared/null_extension.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/row_button.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/project/view/comment_view.dart';
import 'package:internal_app/pt_cash/controller/pt_cash_summary_controller.dart';
import 'package:internal_app/pt_cash/controller/pt_cash_transactions_controller.dart';
import 'package:internal_app/pt_cash/model/pr_transaction_model.dart';
import 'package:internal_app/pt_cash/view/pt_cash_summary_view.dart';
import 'package:nb_utils/nb_utils.dart';

class PtCashView extends ConsumerStatefulWidget {
  const PtCashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PtCashViewState();
}

class _PtCashViewState extends ConsumerState<PtCashView> {
  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();
  @override
  void initState() {
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
      body: ListView(
        children: [
          ProviderHelperWidget(
              function: (ptCash) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    PtSummaryWidget(
                      title: "Petty Cash On Hand",
                      value: ptCash.ptc.s,
                    ),
                    // PtSummaryWidget(
                    //   title: "Total Received",
                    //   value: ptCash.total_received.s,
                    // ),
                    // PtSummaryWidget(
                    //   title: "Total Expenses",
                    //   value: ptCash.total_expenses.s,
                    // ),
                    // PtSummaryWidget(
                    //   title: "Total Transfered",
                    //   value: ptCash.total_transfered.s,
                    // ),
                  ],
                );
              },
              listener: ref.watch(ptCashSummaryProvider)),
          12.height,
          RowButton(
            bgColor: UiColors.primary,
            textColor: UiColors.white,
            text: "PT Cash Summary",
            onTap: () {
              PtCashSummary()
                  .launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
            },
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: const DottedLine(
              dashLength: 7,
              dashGapLength: 0,
              lineThickness: 1,
              dashColor: Colors.grey,
              dashGapColor: Colors.transparent,
            ),
          ),
          5.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    "From: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  5.width,
                  Container(
                    decoration: boxDecorationDefault(),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(
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
                  const Text(
                    "To: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  5.width,
                  Container(
                      decoration: boxDecorationDefault(),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
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
            loadingShape: PtCashWidget(trans: PtTransactionModel()),
            function: (list) => list.isEmpty
                ? const Center(child: Text("No Transactions Found"))
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      final trans = list[index];
                      return PtCashWidget(trans: trans);
                    },
                  ),
            listener: ref.watch(ptCashTransactionsProvider(
                startDate: fromDate, endDate: toDate)),
          ),
        ],
      ),
    );
  }
}

class PtCashWidget extends StatelessWidget {
  const PtCashWidget({
    super.key,
    required this.trans,
  });

  final PtTransactionModel trans;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationDefault(),
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                trans.date.toDate(),
              ),
              Container(
                decoration: boxDecorationDefault(
                    borderRadius: BorderRadius.circular(20),
                    color: UiColors.secondary),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Text(
                  trans.status_name.s.capitalizeEachWord(),
                  style: CustomStyle.small.copyWith(color: UiColors.white),
                ),
              )
            ],
          ),
          6.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HtmlWidget(trans.cash_on_hand.s),
              Text(
                "${trans.amount.s} OMR",
                style: CustomStyle.pBold.copyWith(color: UiColors.primary),
              )
            ],
          ),
          6.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("From: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(trans.from.s)
                ],
              ),
              Row(
                children: [
                  const Text("To: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(trans.to.s)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class PtSummaryWidget extends StatelessWidget {
  final String title;
  final String value;
  const PtSummaryWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: CustomStyle.p.copyWith(color: UiColors.primary),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                textAlign: TextAlign.center,
                style: CustomStyle.p.copyWith(color: UiColors.error),
              ),
              1.width,
              const Icon(
                Icons.monetization_on,
                color: UiColors.secondary,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
