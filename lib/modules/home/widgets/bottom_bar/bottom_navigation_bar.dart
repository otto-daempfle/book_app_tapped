import 'package:book_app_tapped/utils/constants/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      onTap: (index) {
        //Handle Navigation
      },
      selectedColorOpacity: 1,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      itemShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      items: [
        SalomonBottomBarItem(
          selectedColor: Theme.of(context).colorScheme.background,
          icon: SvgPicture.asset(IconConstants.dashboard),
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(IconConstants.stack),
          title: Text(
            'Stack',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(IconConstants.compass),
          title: Text(
            'Compass',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(IconConstants.forward),
          title: Text(
            'Forward',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
