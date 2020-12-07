import 'package:flutter/material.dart';
import 'package:i_am_luis_alavez/widgets/Experience/experience_desktop_section.dart';
import 'package:i_am_luis_alavez/widgets/aboutme/aboutme_section.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AboutMe(),
        ExperienceDesktopSection(),
      ],
    );
  }
}
