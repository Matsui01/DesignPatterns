import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract class PlatformButton {
  factory PlatformButton(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android: return AndroidButton();
      case TargetPlatform.iOS: return IosButton();
      default: return null;
    }
  }

  Widget build({
    @required BuildContext context,
    @required Widget child,
    @required VoidCallback onPressed
  });
}

class AndroidButton implements PlatformButton {
  @override
  Widget build({
    @required BuildContext context,
    @required Widget child,
    @required VoidCallback onPressed
  }) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
    );
  }
}

class IosButton implements PlatformButton {
  @override
  Widget build({
    @required BuildContext context,
    @required Widget child,
    @required VoidCallback onPressed
  }) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
    );
  }
}
