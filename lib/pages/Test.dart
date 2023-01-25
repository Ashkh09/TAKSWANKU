import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

// webview
Widget wv_Test() {
  WebViewController? controller;
  controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
// Update loading bar.
          Center( child: CircularProgressIndicator(),);
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
    ..loadRequest(Uri.parse('http://kahoot.it'));
  return WebViewWidget(controller: controller);
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: wv_Test());
  }
}
