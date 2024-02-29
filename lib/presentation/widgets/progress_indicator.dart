import 'package:flutter/material.dart';

class AppProgressIndicator {
  static Widget enabledProgressIndicator({required bool show}) {
    return SizedBox(
      height: 3,
      child: show ? const LinearProgressIndicator() : const SizedBox(),
    );
  }

  static Widget circularProgressIndicator() {
    return const CircularProgressIndicator(
      strokeWidth: 1,
    );
  }
}
