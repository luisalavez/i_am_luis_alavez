import 'package:flutter/material.dart';
import 'package:i_am_luis_alavez/widgets/aboutme/contact_info.dart';
import 'package:i_am_luis_alavez/widgets/aboutme/description.dart';
import 'package:i_am_luis_alavez/widgets/aboutme/headers.dart';
import 'package:i_am_luis_alavez/widgets/aboutme/picture.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: 300.0,
      // decoration: BoxDecoration(
      //   border: Border(
      //     right: BorderSide(
      //       width: 2.0,
      //       color: Color.fromRGBO(228, 228, 228, 1.0),
      //     ),
      //   ),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PictureOfMe(),
          HeaderElement(Icons.tag_faces_outlined, 'about me'),
          Description(),
          HeaderElement(Icons.info_outline_rounded, 'contact info'),
          ContactMe(),
        ],
      ),
    );
  }
}
