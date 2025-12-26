import 'package:draftea_pokemon_challenge/ui/container/page_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebView extends StatefulWidget {
  const CustomWebView({
    required this.url,
    required this.mainRouteName,
    super.key,
  });
  final String url;
  final String mainRouteName;

  static const String routeName = '/custom-webview';
  static const String routePath = '/custom-webview';

  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late WebViewController _controller;
  Widget? body;

  @override
  void initState() {
    final nav = NavigationDelegate(
      onProgress: (int progress) {},
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('whatsapp')) {
          return NavigationDecision.prevent;
        } else {
          return NavigationDecision.navigate;
        }
      },
    );

    _controller = WebViewController()
      ..setUserAgent(
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.193 Safari/537.36',
      )
      ..enableZoom(true)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(nav);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final siteUrl = widget.url.endsWith('.pdf')
        ? 'https://docs.google.com/viewer?url=${widget.url}'
        : widget.url;

    final url = Uri.tryParse(siteUrl);

    if (url != null && widget.url != 'defaulturl') {
      _controller.loadRequest(url);
      body = WebViewWidget(controller: _controller);
    } else {
      body = const Center(child: Text('Invalid URL'));
    }
    return PageContainer(
      appbar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.goNamed(widget.mainRouteName);
            }
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        //  title: Assets.images.draftea_pokemon_challengeLogo.image(),
      ),
      child: body!,
    );
  }
}
