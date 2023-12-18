import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/widgets/custom_card.dart';
import 'package:henry_meds_mobile/widgets/custom_default_button.dart';
import 'package:henry_meds_mobile/widgets/custom_text_launcher.dart';

import 'home_page_upcoming/home_page_upcoming_info.dart';

class HomePageUpcomingAppointments extends StatelessWidget {
  const HomePageUpcomingAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic mockData = {
      'appointments': [
        {
          'provider': 'Darth Vader, FNP',
          'time': '8:15 AM - 8:30 AM EST',
          'date': '12/16/2023',
          'type': 'Tablet Weight Management',
          'link': 'https://henry.doxy.me/welcome',
        },
        {
          'provider': 'Obi-Wan Kenobi, MD',
          'time': '9:00 AM - 9:30 AM EST',
          'date': '12/17/2023',
          'type': 'Light Saber Therapy',
          'link': 'https://henry.doxy.me/welcome',
        },
        {
          'provider': 'Yoda, PhD',
          'time': '10:00 AM - 10:30 AM EST',
          'date': '12/18/2023',
          'type': 'Mindful Meditation',
          'link': 'https://henry.doxy.me/welcome',
        },
        {
          'provider': 'Leia Organa, RN',
          'time': '11:00 AM - 11:30 AM EST',
          'date': '12/19/2023',
          'type': 'Galactic Health Check',
          'link': 'https://henry.doxy.me/welcome',
        },
        {
          'provider': 'Han Solo, DDS',
          'time': '12:00 PM - 12:30 PM EST',
          'date': '12/20/2023',
          'type': 'Dental Maintenance',
          'link': 'https://henry.doxy.me/welcome',
        },
      ],
    };

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 21,
      ),
      child: Column(
        children: [
          const Text(
            'Upcoming appointments:',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.separated(
            itemCount: mockData['appointments'].length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 21),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final appointment = mockData['appointments'][index];
              final String provider = appointment['provider'];
              final String time = appointment['time'];
              final String date = appointment['date'];
              final String type = appointment['type'];
              return CustomCard(
                  child: Column(
                children: [
                  HomePageUpcomingInfo(
                    label: 'PROVIDER',
                    text: provider,
                    icon: Icons.local_hospital,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  HomePageUpcomingInfo(
                    label: 'DATE',
                    text: date,
                    icon: Icons.calendar_month,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  HomePageUpcomingInfo(
                    label: 'TIME',
                    text: time,
                    icon: Icons.schedule,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  HomePageUpcomingInfo(
                    label: 'APPOINTMENT TYPE',
                    text: type,
                    icon: Icons.hdr_auto,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 33.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Link to Appointment:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomTextLauncher(
                            text: 'https://henry.doxy.me/welcome',
                            onTap: () {
                              print('launch');
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  CustomDefaultButton(
                    title: 'ADD TO CALENDAR',
                    onTap: () {},
                    margin: EdgeInsets.zero,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomDefaultButton(
                    title: 'RESCHEDULE APPOINTMENT',
                    onTap: () {},
                    margin: EdgeInsets.zero,
                  )
                ],
              ));
            },
          )
        ],
      ),
    );
  }
}
