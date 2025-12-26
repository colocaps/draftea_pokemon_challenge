import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void networkImageHandler(String url, BuildContext context) {
  precacheImage(
    NetworkImage(url),
    context,
    onError: (exception, stacktrace) {
      log(exception.toString());
    },
  );
}
