import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/screens/faq/presentation/faq.dart';
import 'package:henry_meds_mobile/screens/home/presentation/widgets/home_page.dart';
import 'package:henry_meds_mobile/screens/prescriptions/prescriptions/prescriptions.dart';
import 'package:henry_meds_mobile/screens/profile/presentation/profile.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key, required this.persistentTabController});

  final PersistentTabController persistentTabController;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.home,
          size: 22,
        ),
        title: 'Home',
        activeColorPrimary: kMainColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.manage_accounts,
          size: 24,
        ),
        title: 'Account',
        activeColorPrimary: kMainColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: badges.Badge(
          position: badges.BadgePosition.topEnd(top: -8, end: -10),
          badgeContent: const Text(
            '3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Icon(
            Icons.medication,
            size: 22,
          ),
        ),
        title: 'Prescriptions',
        activeColorPrimary: kMainColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.help,
          size: 22,
        ),
        title: 'FAQ',
        activeColorPrimary: kMainColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: persistentTabController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: kGreenBackgroundColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.3)))),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Profile(),
      const Prescriptions(),
      const FAQ(),
    ];
  }
}
