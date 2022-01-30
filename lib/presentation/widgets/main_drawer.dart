import 'package:bristol_stool_chart/presentation/styles/app_colors.dart';
import 'package:bristol_stool_chart/presentation/widgets/drawer_link.dart';
import 'package:flutter/material.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.blueGrey,
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  top: 80,
                  bottom: 80,
                ),
                child: Image(
                  image: AssetImage('assets/images/drawer_logo.png'),
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              DrawerLink(
                text: 'Graph',
                icon: Icons.assessment,
                route: GraphRoute(),
              ),
              DrawerLink(
                text: 'Settings',
                icon: Icons.settings,
                route: SettingsRoute(),
              ),
              DrawerLink(
                text: 'About',
                icon: Icons.info,
                route: AboutRoute(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
