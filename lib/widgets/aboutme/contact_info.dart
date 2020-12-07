import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _mediaInfo(Icons.smartphone, '664 472 62 57'),
          Divider(),
          _mediaInfo(Icons.public, 'luis.alavez.94@gmail.com'),
          Divider(),
          _mediaInfo(
              Icons.house, 'Baja California, Tijuana, \nVillas del real'),
        ],
      ),
    );
  }

  Widget _mediaInfo(IconData icon, String data) {
    return Container(
      constraints: BoxConstraints(minHeight: 26.0),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.lightGreen,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            data,
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
