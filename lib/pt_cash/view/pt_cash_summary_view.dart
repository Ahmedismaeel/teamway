import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/helper/provider_helper.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:internal_app/pt_cash/controller/pt_cash_all_summary_controller.dart';
import 'package:nb_utils/nb_utils.dart';

class PtCashSummary extends ConsumerWidget {
  const PtCashSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Hand PT Cash"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ProviderHelperWidget(
            function: (list) {
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  final ptCash = list[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: boxDecorationDefault(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                "${ptCash.employee_name}",
                                style: CustomStyle.pBold
                                    .copyWith(color: UiColors.primary),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "${ptCash.ptc}",
                              style: CustomStyle.pBold
                                  .copyWith(color: UiColors.primary),
                            ),
                            const Icon(
                              Icons.monetization_on,
                              color: UiColors.secondary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            listener: ref.watch(allPtCashSummaryProvider)),
      ),
    );
  }
}
