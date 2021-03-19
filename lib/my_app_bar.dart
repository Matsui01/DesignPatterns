import 'package:designpatterns/constants/my_colors.dart';
import 'package:designpatterns/my_navigation.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(40);
  final dynamic pageBuilder;
  final String title;
  final bool leading;
  final bool menu;
  final Function menucallback;
  final Function() backFunction;
  final Widget rightAppBarContent;
  final bool centerTitle;

  MyAppBar({
    this.pageBuilder,
    this.title = '',
    this.menucallback,
    this.backFunction,
    this.leading = true,
    this.menu = false,
    this.rightAppBarContent,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(45),
      child: AppBar(
        brightness: Brightness.dark,
        elevation: 3,
        backgroundColor: MyColors.primary,
        iconTheme: IconThemeData(
          color: MyColors.secondary,
        ),
        leading: getLeading(context, leading),
        flexibleSpace: Container(
            alignment: Alignment.bottomRight,
            // margin: EdgeInsets.only(bottom: 22.5 - 14),
            child: rightAppBarContent == null ? Container() : rightAppBarContent),
        title: Text(
          title,
          style: TextStyle(
            color: MyColors.secondary,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        centerTitle: centerTitle,
      ),
    );
  }

  Widget getLeading(context, leading) {
    if (leading) {
      return GestureDetector(
        onTap: () {
          if (backFunction != null) {
            backFunction();
          } else {
            MyNavigation.pop(context);
          }
          // Navigator.of(context).pop();
        },
        child: Container(
          color: Colors.transparent,
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
      );
    } else {
      return menu
          ? GestureDetector(
              onTap: () {
                print("Open Menu");
                if (menucallback != null) {
                  menucallback();
                }
              },
              child: Container(
                width: 50,
                color: Colors.transparent,
                // margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.menu,
                  color: MyColors.secondary,
                ),
              ),
            )
          : Container();
    }
  }
}
