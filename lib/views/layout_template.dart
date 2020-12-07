import 'package:flutter/material.dart';
import 'package:i_am_luis_alavez/views/home/home_desktop_view.dart';
import 'package:i_am_luis_alavez/views/home/home_mobile_view.dart';
import 'package:i_am_luis_alavez/widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                sizingInformation.deviceScreenType == DeviceScreenType.desktop
                    ? HomeDesktopView()
                    : sizingInformation.deviceScreenType ==
                            DeviceScreenType.tablet
                        ? HomeDesktopView()
                        : HomeMobileView(),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
