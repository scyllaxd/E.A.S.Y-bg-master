

import 'package:flutter/material.dart';
import 'package:easy/views/LoginScreen.dart';

import 'package:easy/values/values.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    this.title,
    this.hasLeading = true,
    this.hasTrailing = true,
    this.onActionTap,
    this.trailing,
    this.leading,
    this.onLeadingTap,
  });

  final GestureTapCallback onLeadingTap;
  final GestureTapCallback onActionTap;
  final List<Widget> trailing;
  final Widget leading;
  final bool hasLeading;
  final bool hasTrailing;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: hasLeading ? (leading ?? defaultLeading(context)) : null,
      centerTitle: true,
      title: Text(
        title,
        style: Styles.customTitleTextStyle(
          color: AppColors.headingText,
          fontWeight: FontWeight.w600,
          fontSize: Sizes.TEXT_SIZE_20,
        ),
      ),
      actions: hasTrailing ? (trailing ?? defaultTrailing()) : null,
    );
  }

  List<Widget> defaultTrailing() {
    return <Widget>[
      InkWell(
        onTap: () {},
        child: Image.asset(
          ImagePath.searchIcon,
          color: AppColors.headingText,
        ),
      )
    ];
  }

  Widget defaultLeading(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen())),

      child: Image.asset(
        ImagePath.arrowBackIcon,
        color: AppColors.headingText,
      ),
    );}
  }

