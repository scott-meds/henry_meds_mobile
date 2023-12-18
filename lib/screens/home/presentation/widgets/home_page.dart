import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/constants/constants.dart';
import 'package:henry_meds_mobile/screens/home/presentation/widgets/home_page/home_page_treatment_plans.dart';
import 'package:henry_meds_mobile/screens/home/presentation/widgets/home_page/home_page_upcoming_appointments.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreenBackgroundColor,
      child: ListView(
        children: const [
          HomePageTreatmentPlans(),
          HomePageUpcomingAppointments(),
        ],
      ),
    );
  }
}
