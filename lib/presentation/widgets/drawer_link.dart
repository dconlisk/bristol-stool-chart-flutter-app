import 'package:auto_route/auto_route.dart';
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
              color: Theme.of(context).accentIconTheme.color,
              size: Theme.of(context).accentIconTheme.size,
            ),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.headline4,
          )
        ],
      ),
      onTap: () {
        //Navigator.pushNamedAndRemoveUntil(context, route, (_) => false);
        AutoRouter.of(context).push(route);
      },
    );
  }
}
