import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:flutter/material.dart';

class DrawerLink extends StatelessWidget {
  final String text;
  final IconData icon;
  final PageRouteInfo route;

  const DrawerLink({
    super.key,
    required this.text,
    required this.icon,
    required this.route,
  });

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
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
      onTap: () {
        if (AutoRouter.of(context).current.name != route.routeName) {
          AutoRouter.of(context).popAndPush(route);
        } else {
          AutoRouter.of(context).pop();
        }
      },
    );
  }
}
