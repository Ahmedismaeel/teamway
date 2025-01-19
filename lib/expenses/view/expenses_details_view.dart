import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/expenses/model/expense_model.dart';
import 'package:internal_app/expenses/view/expenses_list_view.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:nb_utils/nb_utils.dart';

class ExpenseDetailsView extends ConsumerWidget {
  final Data expense;
  const ExpenseDetailsView({
    super.key,
    required this.expense,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${expense.title}"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: ListView(
          children: [
            ExpenseCard(
              amount: expense.amount ?? "",
              category: '${expense.category_name}',
              date: '${expense.expense_date}',
              title: '${expense.title}',
              paymentMode: '${expense.payment_mode}',
              teamMember: '${expense.linked_user_name}',
              status: '${expense.status}',
            ),
            12.height,
            Text("Description:"),
            Text(
              '${expense.description}',
              textAlign: TextAlign.center,
            ),
            ItemWidget(
              title: 'Tax',
              value: '${expense.tax}',
            ),
            ItemWidget(
              title: 'Category',
              value: '${expense.category_name}',
            ),
            ItemWidget(
              title: 'Payment Mode',
              value: '${expense.payment_mode}',
            ),
            ItemWidget(
              title: 'Project',
              value: '${expense.project_title}',
            ),
            ItemWidget(
              title: 'Status',
              value: '${expense.status}',
            ),
            // ItemWidget(
            //   title: 'Tax',
            //   value: '${expense.company_name}',
            // ),
            Wrap(
              children: [
                for (Attachments element in expense.attachments ?? [])
                  Container(
                          margin: EdgeInsets.all(4),
                          child: CacheImage(
                              height: 100,
                              width: 100,
                              image: "${element.url}",
                              radius: 7))
                      .onTap(() {
                    SmartDialog.show(builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Center(
                            child: InteractiveViewer(
                              child: CacheImage(
                                  height:
                                      MediaQuery.of(context).size.height * 0.9,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  image: "${element.url}",
                                  radius: 7),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height * 0.1),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: boxDecorationDefault(
                                            shape: BoxShape.circle),
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.cancel),
                                      )
                                    ]),
                              ).onTap(() {
                                SmartDialog.dismiss();
                              }),
                            ],
                          )
                        ],
                      );
                    });
                  })
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final String title;
  final String value;
  const ItemWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: CustomStyle.p,
          ),
          Text("$value")
        ],
      ),
    );
  }
}
