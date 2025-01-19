import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:internal_app/auth/auth_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:riverpod/riverpod.dart';

extension WidgetExtension on Widget {
  click({required Function(WidgetRef ref)? onTap}) {
    return Clickable(
      onTap: onTap,
      child: this,
    );
  }

  submit(
          {required ProviderListenable<dynamic> provider,
          required Function(dynamic) onSuccess,
          required Function(dynamic) onFailed,
          final Function(WidgetRef ref)? onTap}) =>
      SubmitWidget(
        provider: provider,
        onSuccess: onSuccess,
        onFailed: onFailed,
        onTap: onTap,
        child: this,
      );
}

class Clickable extends ConsumerWidget {
  final Function(WidgetRef ref)? onTap;
  final Widget child;
  const Clickable({required this.onTap, required this.child, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        hideKeyboard(context);
        onTap != null ? onTap!(ref) : "".log();
      },
      child: child,
    );
  }
}

class SubmitWidget extends StatelessWidget {
  final ProviderListenable provider;
  final Function(dynamic) onSuccess;
  final Function(dynamic) onFailed;
  final Function(WidgetRef ref)? onTap;
  final Widget child;
  const SubmitWidget(
      {super.key,
      required this.provider,
      required this.child,
      required this.onSuccess,
      required this.onFailed,
      this.onTap});
  t() {}
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, w) {
      ref.listen(provider, (previous, next) {
        next.when(() => {},
            initial: () {},
            loading: () {},
            success: onSuccess,
            failed: onFailed);
      });

      return IgnorePointer(
        ignoring: onTap == null,
        child: InkWell(
            onTap: () {
              hideKeyboard(context);
              onTap != null ? onTap!(ref) : "".log();
            },
            child: child),
      );
    });
  }
}
