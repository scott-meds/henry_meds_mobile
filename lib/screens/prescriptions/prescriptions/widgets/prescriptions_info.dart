import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/screens/prescriptions/prescriptions/widgets/prescriptions_dosing_info_header.dart';
import 'package:henry_meds_mobile/widgets/custom_card.dart';

class PrescriptionsInfo extends StatelessWidget {
  const PrescriptionsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic mockPrescriptions = [
      {
        'title': 'SEMAGLUTIDE / CYANOCOBALAMIN INJECTION (2.5 ML)',
        'created': '12/18/2023',
        'status': 'Pending',
        'medication': [
          {
            'title': 'Semaglutide / Cyanocobalamin Injection (2.5 Ml)',
            'isInjection': true,
            'strength': '5/0.5 mg/ml',
            'quantity': '1',
          }
        ],
        'supplies': [
          {'title': 'Syringe 31g 5/16 0.3cc (Easy Touch)', 'quantity': '2'},
          {'title': 'Alcohol Prep Pads', 'quantity': '1'}
        ],
        'instructions':
            'Inject subcutaneously once weekly. Weeks 1-4: 0.05ml (5units), Weeks 5-8: 0.1ml (10units), Weekds 9 and On: 0.2ml (20 units)',
      },
      {
        'title': 'MIRTAZAPINE',
        'created': '12/18/2023',
        'status': 'Pending',
        'medication': [
          {
            'title': 'Mirtazapine',
            'isInjection': false,
            'strength': '7.5mg',
            'quantity': '60',
          }
        ],
        'supplies': [],
        'instructions': 'Take one tablet by mouth nightly as needed',
      },
      {
        'title': 'PHENTERMINE TABLETS',
        'created': '12/18/2023',
        'status': 'Active',
        'medication': [
          {
            'title': 'Phentermine Tablets',
            'isInjection': false,
            'strength': '37.5mg',
            'quantity': '15',
          }
        ],
        'supplies': [],
        'instructions': 'Take one half tablet daily by mouth with breakfast',
      }
    ];

    return ListView.separated(
      itemCount: mockPrescriptions.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 13,
      ),
      itemBuilder: (context, index) {
        final prescription = mockPrescriptions[index];
        final title = prescription['title'];
        final created = prescription['created'];
        final status = prescription['status'];
        final medication = prescription['medication'];
        final supplies = prescription['supplies'];
        final instructions = prescription['instructions'];
        return CustomCard(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Created: $created'),
            const SizedBox(
              height: 5,
            ),
            Text('Status: $status'),
            const SizedBox(
              height: 13,
            ),
            const Text(
              'Medication',
              style: TextStyle(
                fontSize: 17,
                color: kIconGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ListView.separated(
                itemCount: medication.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                itemBuilder: (context, index) {
                  final medicationInfo = medication[index];
                  final medicationTitle = medicationInfo['title'];
                  final medStrength = medicationInfo['strength'];
                  final medQuantity = medicationInfo['quantity'];
                  final isInjection = medicationInfo['isInjection'];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      isInjection
                          ? const Icon(
                              Icons.vaccines,
                            )
                          : const Icon(
                              Icons.medication,
                            ),
                      const SizedBox(
                        width: 13,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(medicationTitle),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Strength: $medStrength',
                              style: const TextStyle(
                                color: kTextGrey,
                              ),
                            ),
                            Text(
                              'Quantity: $medQuantity',
                              style: const TextStyle(
                                color: kTextGrey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
            const SizedBox(
              height: 13,
            ),
            if (supplies.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Supplies',
                    style: TextStyle(
                      fontSize: 17,
                      color: kIconGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  ListView.separated(
                      itemCount: supplies.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 8,
                          ),
                      itemBuilder: (context, index) {
                        final supply = supplies[index];
                        final supplyTitle = supply['title'];
                        final supplyQuantity = supply['quantity'];
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.medical_services,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(supplyTitle),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Quantity: $supplyQuantity',
                                    style: const TextStyle(
                                      color: kTextGrey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }),
                ],
              ),
            ConfigurableExpansionTile(
              headerExpanded: const PrescriptionsDosingInfoHeader(
                title: 'HIDE DOSING INSTRUCTIONS',
                isOpen: true,
              ),
              header: const PrescriptionsDosingInfoHeader(
                  title: 'SHOW DOSING INSTRUCTIONS'),
              childrenBody: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Dosing Instructions',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: kIconGrey,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(instructions),
                  ],
                ),
              ),
            )
          ],
        ));
      },
    );
  }
}
