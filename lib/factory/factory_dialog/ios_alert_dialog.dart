import 'package:designpatterns/factory/factory_dialog/custom_dialog.dart';
import 'package:flutter/cupertino.dart';

class IosAlertDialog extends CustomDialog {
  @override
  String getTitle() {
    return 'iOS Alert Dialog';
  }

  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text('This is the cupertino-style alert dialog!'),
      actions: <Widget>[
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}