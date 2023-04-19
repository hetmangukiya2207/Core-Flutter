import 'package:flutter/material.dart';
import 'package:pr_4_resume_builder_app/views/screens/BuildOptionPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/HomePage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/AchievementsPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/CarrierObjectivePage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/ContactInfoPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/DeclarationPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/EducationPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/ExperiencePage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/InterestHobbiesPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/PDFPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/PersonalDetailsPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/ProjectsPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/ReferencesPage.dart';
import 'package:pr_4_resume_builder_app/views/screens/build_option_pages/TechnicalSkillsPage.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'BuildOptionPage': (context) => const BuildOptionPage(),
        'ContactInfoPage': (context) => const ContactInfoPage(),
        'CarrierObjectivePage': (context) => const CarrierObjectivePage(),
        'PersonalDetailsPage': (context) => const PersonalDetailsPage(),
        'EducationPage': (context) => const EducationPagePage(),
        'ExperiencePage': (context) => const ExperiencePage(),
        'TechnicalSkillsPage': (context) => const TechnicalSkillsPage(),
        'InterestHobbiesPage': (context) => const InterestHobbiesPage(),
        'ProjectsPage': (context) => const ProjectsPage(),
        'AchievementsPage': (context) => const AchievementsPage(),
        'ReferencesPage': (context) => const ReferencesPage(),
        'DeclarationPage': (context) => const DeclarationPage(),
        'PDFPage': (context) => const PDFPage(),
      },
    );
  }
}
