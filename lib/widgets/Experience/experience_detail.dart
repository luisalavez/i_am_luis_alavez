import 'package:flutter/material.dart';
import 'package:i_am_luis_alavez/models/tool_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceDetail extends StatelessWidget {
  final String company;
  final String date;
  final String description;
  final List<Tool> tools;
  const ExperienceDetail(this.company, this.date, this.description,
      {this.tools});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          company ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(date ?? '')
                      ],
                    )
                  : Column(
                      children: [
                        Text(
                          company ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          date ?? '',
                        )
                      ],
                    ),
              SizedBox(height: 5.0),
              Text(description ?? ''),
              tools != null
                  ? Row(
                      children: _tools(tools),
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _tools(List<Tool> tools) {
    return tools.map((tool) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              tool.icon,
              color: tool.color,
              size: 14.0,
            ),
            SizedBox(width: 2.0),
            // Text(
            //   tool.name ?? '',
            //   style: TextStyle(fontSize: 12.0, color: Colors.grey),
            // ),
          ],
        ),
      );
    }).toList();
  }
}
