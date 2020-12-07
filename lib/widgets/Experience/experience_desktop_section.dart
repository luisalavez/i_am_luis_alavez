import 'package:flutter/material.dart';
import 'package:i_am_luis_alavez/models/tool_model.dart';
import 'package:i_am_luis_alavez/styles/text_styles.dart';
import 'package:i_am_luis_alavez/widgets/Experience/experience_detail.dart';
import 'package:i_am_luis_alavez/widgets/Experience/skills_desktop_section.dart';
import 'package:i_am_luis_alavez/widgets/Experience/skills_tablet_section.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceDesktopSection extends StatelessWidget {
  const ExperienceDesktopSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      //double maxWidth = MediaQuery.of(context).size.width > 1700 ? 650 : 320;
      double maxWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? MediaQuery.of(context).size.width > 1700
                  ? 850
                  : 320
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 320
                  : 20;
      return Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width - maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            _title(sizingInformation.deviceScreenType, 'Experience'),
            ...setExperienceDetailList(),
            _title(sizingInformation.deviceScreenType, 'Education'),
            ...setEducationExperience(),
            _title(sizingInformation.deviceScreenType, 'Skills'),
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? SkillsDesktop()
                : SkillsTablet(),
          ],
        ),
      );
    });
  }

  Widget _title(DeviceScreenType deviceScreenType, String title) {
    return Container(
      child: Column(
        crossAxisAlignment: deviceScreenType == DeviceScreenType.mobile
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleTextStyle(deviceScreenType),
          ),
          _animatedUnderline(),
        ],
      ),
    );
  }

  Widget _animatedUnderline() {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
      width: double.infinity,
      height: 2.0,
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(4.0)),
    );
  }

  List<Widget> setExperienceDetailList() {
    return [
      ExperienceDetail(
        'Bourns de Mexico',
        'October-2016, August-2018',
        'I worked in the full stack development of web systems, for the maintenance,' +
            'engineering and quality area, for the visualization of machine failure alerts, ANDON,' +
            'report of maintenance and engineering metrics',
        tools: [
          Tool(
            Icons.code,
            Colors.blue,
            'C#',
          ),
          Tool(
            Icons.data_usage_rounded,
            Colors.blue,
            'Sql Server',
          ),
          Tool(
            Icons.style_rounded,
            Colors.pink,
            'Materialize',
          ),
        ],
      ),
      ExperienceDetail(
        'Baja logics',
        'August-2018, November-2018',
        'Working as outsourcing at Foxconn, developing a KPI system (spoilage, certifications, attendance).',
        tools: [
          Tool(
            Icons.code,
            Colors.blue,
            'C#',
          ),
          Tool(
            Icons.data_usage_rounded,
            Colors.blue,
            'Oracle',
          ),
        ],
      ),
      ExperienceDetail(
        'Global Hawk Insurance',
        'January-2019, Currently',
        'Work on the maintenance of web systems, as well as on the frontend and backend.',
        tools: [
          Tool(
            Icons.code,
            Colors.blue,
            'C#',
          ),
          Tool(
            Icons.data_usage_rounded,
            Colors.blue,
            'Oracle',
          ),
        ],
      ),
    ];
  }

  List<Widget> setEducationExperience() {
    return [
      ExperienceDetail(
        'Cbtis 116',
        'August-2009, July-2012',
        'Maintenance',
      ),
      ExperienceDetail(
        'Instituto Tecnologico de Tijuana',
        'August-2012, July-2017',
        'Engineering in computer systems',
      ),
    ];
  }
}
