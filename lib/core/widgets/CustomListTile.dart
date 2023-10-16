import 'package:echo_cash/core/constants/app_globals.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Function() onTap;
  final Widget? trailing;

  CustomListTile({
    this.leading,
    required this.title,
    required this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          iconColor: iconColor,
          leading: leading,
          title: title,
          onTap: onTap,
          trailing: trailing,
        ),
        const Divider(
          height: 0,
          color: greyColor,
        ),
      ],
    );
  }
}
