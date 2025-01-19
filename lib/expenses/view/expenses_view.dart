import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/expenses/view/create_expense_view.dart';
import 'package:internal_app/expenses/view/expenses_list_view.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/pt_cash/view/pt_cash_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tab_container/tab_container.dart';

class ExpensesView extends ConsumerStatefulWidget {
  const ExpensesView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExpensesViewState();
}

class _ExpensesViewState extends ConsumerState<ExpensesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Expenses"),
      // ),
      extendBody: true,
      body: SafeArea(
        child: TabContainer(
          // controller: TabController(length: null, vsync: null),
          tabEdge: TabEdge.top,
          tabsStart: 0.1,
          tabsEnd: 0.9,
          tabMaxLength: 200,
          borderRadius: BorderRadius.circular(10),
          tabBorderRadius: BorderRadius.circular(10),
          childPadding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          selectedTextStyle: const TextStyle(
            color: UiColors.primary,
            fontSize: 15.0,
          ),
          unselectedTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
          colors: const [
            UiColors.white,
            UiColors.white,
          ],
          tabs: const [
            Text(
              'Expenses',
              style: CustomStyle.p,
            ),
            Text(
              'PT Cash',
              style: CustomStyle.p,
            ),
          ],
          children: [ExpensesList(), PtCashView()],
        ),
      ),
    );
  }
}
