import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/screens/profile/presentation/widgets/profile_personal_info.dart';
import 'package:henry_meds_mobile/screens/profile/presentation/widgets/profile_shipping_info.dart';
import 'package:henry_meds_mobile/screens/profile/presentation/widgets/profile_title.dart';
import 'package:henry_meds_mobile/widgets/custom_avatar.dart';
import 'package:henry_meds_mobile/widgets/custom_default_button.dart';
import 'package:henry_meds_mobile/widgets/custom_text_launcher.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreenBackgroundColor,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              children: [
                const Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Hero(tag: 'user', child: CustomAvatar()),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Scott Williams',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                const ProfileTitle(
                  title: 'Personal Information',
                  icon: Icons.account_circle,
                ),
                const Divider(),
                const SizedBox(
                  height: 8,
                ),
                const ProfilePersonalInfo(),
                const SizedBox(
                  height: 21,
                ),
                CustomDefaultButton(title: 'RESET YOUR PASSWORD', onTap: () {}),
                const SizedBox(
                  height: 35,
                ),
                const ProfileTitle(
                  title: 'Shipping Information',
                  icon: Icons.local_shipping,
                ),
                const Divider(),
                const SizedBox(
                  height: 8,
                ),
                const ProfileShippingInfo(),
                const SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: CustomTextLauncher(
                      text: 'Subscribe to another treatment program',
                      onTap: () {}),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'Talk to Henry',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                    'How can we help? Our team is standing by to assist you with any questions from Monday to Saturday, 8:00am - 5:00pm (Pacific Standard Time).'),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    const Text(
                      'Email: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                        child: CustomTextLauncher(
                            text: 'Ask@HenryMeds.com', onTap: () {})),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    const Text(
                      'Phone: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                        child: CustomTextLauncher(
                            text: '(909) 787-2342', onTap: () {})),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
