import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internal_app/global/end_points.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends ConsumerWidget {
  final String url;
  WebViewPage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onProgress: (int progress) {
                  // Update loading bar.
                },
                onPageStarted: (String url) {},
                onPageFinished: (String url) {},
                onHttpError: (HttpResponseError error) {},
                onWebResourceError: (WebResourceError error) {},
              ),
            )
            ..loadRequest(Uri.parse(url), headers: {
              "Authorization":
                  "Bearer ${SharedPreferenceHelper.instance.authToken}"
              // "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMiJ9.HFb_qkrtenZPbfKtFpX7N-boPYDW7U6TIXugbpmBNHA"
            })),
    );
  }
}
