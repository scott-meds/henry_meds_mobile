import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/widgets/custom_card.dart';
import 'package:henry_meds_mobile/widgets/custom_text_launcher.dart';

class HomePageTreatmentPlans extends StatelessWidget {
  const HomePageTreatmentPlans({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic mockData = {
      'treatments': [
        {'title': 'Medical Weight Loss', 'meds': []},
        {
          'title': 'GLP-1 Weight Loss',
          'meds': ['Tirzeptide', 'Extra Meds']
        },
        {'title': 'Testosterone Therapy', 'meds': []},
        {'title': 'Insomnia Therapy', 'meds': []},
      ]
    };
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Treatment Plans',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.separated(
              itemCount: mockData['treatments'].length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final treatment = mockData['treatments'][index];
                return Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 10,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          treatment['title'],
                        ),
                      ],
                    ),
                    if (treatment['meds'].isNotEmpty)
                      const SizedBox(
                        height: 8,
                      ),
                    ListView.separated(
                        itemCount: treatment['meds'].length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          String med = treatment['meds'][index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.circle_outlined,
                                  size: 10,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  med,
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextLauncher(
              text: 'Subscribe to another treatment program',
              onTap: () {
                print('go to subscribe');
              },
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ],
        ),
      ),
    );
  }
}
