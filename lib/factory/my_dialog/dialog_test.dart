// import 'dart:ui';
// import 'package:designpatterns/constants/my_margin.dart';
// import 'package:flutter/material.dart';

// abstract class MyDialog {
//   Widget create(BuildContext context);

//   Future<void> show(BuildContext context) async {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return GestureDetector(
//           onTap: () {
//             print("ok");
//           },
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
//             child: AlertDialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               backgroundColor: Color.fromARGB(50, 255, 255, 255),
//               elevation: 0,

//               insetPadding: EdgeInsets.only(right: MyMargin.mainMargin, left: MyMargin.mainMargin),
//               contentPadding: EdgeInsets.all(0),
//               // child: content,
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   create(context),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     ).then((val) {
//       // if (callback != null) {
//       //   callback();
//       // }
//     });
//   }
// }

// class FlatDialogCreator extends MyDialog {
//   Widget create() {
//     return MyFlatDialog();
//   }
// }

// class AlertDialogCreator extends MyDialog {
//   Widget factoryMethod() {
//     return new ConcreteProduct2();
//   }
// }

// //interface
// abstract class MyInterface {
//   Widget createWidget();
// }

// class MyAlertDialog1 implements MyInterface {
//   @override
//   Widget create(BuildContext context) {
//     return Container(
//       height: 100,
//       child: Center(
//         child: Text(
//           "Alert Dialog",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyFlatDialog1 implements MyInterface {
//   @override
//   Widget create(BuildContext context) {
//     return Container(
//       height: 100,
//       child: Center(
//         child: Text(
//           "Flat Dialog",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FactoryExample {
//   void run() async {
//     MyAlertDialog1 alertDialog = MyAlertDialog1();
//     MyFlatDialog1 flatDialog = MyFlatDialog1();
//     BuildContext context;
//     await alertDialog.show(context);
//     await flatDialog.show(context);
//   }
// }
