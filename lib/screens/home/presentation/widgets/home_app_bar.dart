import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/widgets/custom_avatar.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar(
      {super.key,
      required this.persistentTabController,
      required this.onConfettiTap});

  final PersistentTabController persistentTabController;
  final VoidCallback onConfettiTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kMainColor,
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.8),
      leading: GestureDetector(
        onTap: () {
          persistentTabController.jumpToTab(1);
        },
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Hero(tag: 'user', child: CustomAvatar()),
        ),
      ),
      centerTitle: true,
      title: GestureDetector(
        onTap: () {
          persistentTabController.jumpToTab(0);
        },
        child: SizedBox(
            width: 100,
            child: Image.asset('assets/images/logo_full_white.png')),
      ),
      actions: [
        GestureDetector(
          onTap: onConfettiTap,
          child: const SizedBox(
            width: 30,
            height: 50,
            child: Icon(
              Icons.emoji_events,
              color: Colors.white,
              size: 22,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: 10, end: 0),
          child: const SizedBox(
            width: 30,
            height: 50,
            child: Icon(
              Icons.message,
              color: Colors.white,
              size: 22,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
