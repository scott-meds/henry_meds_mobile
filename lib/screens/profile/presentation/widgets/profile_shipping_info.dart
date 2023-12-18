import 'package:flutter/material.dart';

class ProfileShippingInfo extends StatelessWidget {
  const ProfileShippingInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic infoMock = [
      {
        'street': '123 Main St',
        'location': 'New York, Georgia 33333',
        'label': 'Shipping address for Medical Weight Loss'
      },
      {
        'street': '456 Oak Ave',
        'location': 'Los Angeles, California 90001',
        'label': 'Billing address for GLP-1 Weight Loss'
      },
      {
        'street': '789 Pine Rd',
        'location': 'Chicago, Illinois 60601',
        'label': 'Home address'
      },
      {
        'street': '101 Elm Blvd',
        'location': 'Miami, Florida 33101',
        'label': 'Work address'
      },
      {
        'street': '202 Cedar Ln',
        'location': 'Seattle, Washington 98101',
        'label': 'Secondary address'
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: ListView.separated(
        itemCount: infoMock.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 13),
        itemBuilder: (context, index) {
          final info = infoMock[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(info['street']),
              Text(info['location']),
              Text(
                info['label'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
