import 'package:flutter/material.dart';

class HeaderElement extends StatelessWidget {
  final IconData icon;
  final String text;
  const HeaderElement(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 20.0,
            color: Colors.lightGreen,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            text.toUpperCase(),
            style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
