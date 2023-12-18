import 'package:flutter/material.dart';

class ProfilePersonalInfo extends StatelessWidget {
  const ProfilePersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic infoMock = [
      {'content': 'test@henrymeds.com', 'label': 'Email'},
      {'content': '(333) 333-3333', 'label': 'Phone'},
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
              Text(
                info['label'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(info['content']),
            ],
          );
        },
      ),
    );
  }
}
