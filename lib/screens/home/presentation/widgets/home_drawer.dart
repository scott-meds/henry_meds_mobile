import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/router/router.dart';
import 'package:henry_meds_mobile/widgets/custom_avatar.dart';
import 'package:henry_meds_mobile/widgets/custom_default_button.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.persistentTabController});

  final PersistentTabController persistentTabController;

  @override
  Widget build(BuildContext context) {
    dynamic drawerItems = [
      {'name': 'Home', 'icon': Icons.home},
      {'name': 'My Account', 'icon': Icons.manage_accounts},
      {'name': 'My Prescriptions', 'icon': Icons.medication},
      {'name': 'FAQ', 'icon': Icons.help}
    ];

    //TODO: change this to an enum
    int activeTab = persistentTabController.index;
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: kMainColor,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Hero(tag: 'user', child: CustomAvatar()),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'scott.williams@henrymeds.com',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.emoji_emotions,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.emoji_events,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: drawerItems.length,
                itemBuilder: (context, index) {
                  final item = drawerItems[index];
                  bool isActive = activeTab == index;
                  return ListTile(
                    leading: Icon(
                      item['icon'],
                      color: isActive ? kMainColor : kTextGrey,
                    ),
                    title: Text(
                      item['name'],
                      style: TextStyle(
                        color: isActive ? kMainColor : kTextGrey,
                        fontWeight:
                            isActive ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    onTap: () {
                      persistentTabController.jumpToTab(index);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: CustomDefaultButton(
                title: 'Log out',
                onTap: () {
                  Navigator.pushReplacementNamed(context, AppRouter.login);
                }),
          ),
        ],
      ),
    );
  }
}
