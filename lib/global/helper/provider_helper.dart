import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/widgets/text_function.dart';
import 'package:lottie/lottie.dart';

class ProviderHelperWidget<T> extends ConsumerWidget {
  final AsyncValue<T> listener;
  final Widget Function(T) function;
  final Widget? errorWidget;
  final Widget? loadingShape;
  const ProviderHelperWidget(
      {required this.function,
      required this.listener,
      this.errorWidget,
      this.loadingShape,
      Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return listener.when(
        data: (response) {
          return function(response);
        },
        error: (e, s) =>
            errorWidget ??
            Column(
              children: [
                Text(
                  errorHandler(e),
                  style: CustomStyle.p,
                ),
                Lottie.asset("assets/lottie/failed.json")
              ],
            ),
        loading: () => loadingShape != null
            ? LoadingShimmer(child: loadingShape!)
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
