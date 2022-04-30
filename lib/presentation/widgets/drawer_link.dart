import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';

class DrawerLink extends StatelessWidget {
  final String text;
  final IconData icon;
  final PageRouteInfo route;

  const DrawerLink({
    Key? key,
    required this.text,
    required this.icon,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
            ),
            child: Icon(
              icon,
              color: AppColors.white,
              size: AppSizes.drawerIconSize,
            ),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.headline3,
          )
        ],
      ),
      onTap: () {
        AutoRouter.of(context).popAndPush(route);
      },
    );
  }
}
