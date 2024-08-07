// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MyWebView extends StatefulWidget {
//   const MyWebView({super.key});
//   @override
//   State<MyWebView> createState() => _MyWebViewState();
// }

// class _MyWebViewState extends State<MyWebView> {
//   late final WebViewController controller;
//   @override
//   void initState() {
//     super.initState();
//     final String webLink;
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onHttpError: (HttpResponseError error) {},
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('https://www.youtube.com/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse('https://flutter.dev'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: WebViewWidget(controller: controller),
//       ),
//     );
//   }
// }
