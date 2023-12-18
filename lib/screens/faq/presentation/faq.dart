import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/widgets/custom_progress_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  late WebViewController webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://henrymeds.com/faq/'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreenBackgroundColor,
      child: Stack(
        children: [
          const Center(child: CustomProgressIndicator()),
          WebViewWidget(controller: webViewController),
        ],
      ),
    );
  }
}
