import 'package:flutter/material.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _skill(Icons.style_outlined, Colors.pink, 'Semantic UI'),
            _skill(Icons.style_outlined, Colors.pink, 'Materialize'),
            _skill(Icons.style_outlined, Colors.pink, 'Bootstrap'),
            _skill(Icons.cloud, Colors.blue, 'Azure'),
          ],
        ),
        TableRow(
          children: [
            _skill(Icons.source_outlined, Colors.lightGreen, 'Git'),
            _skill(Icons.source_outlined, Colors.lightGreen, 'Turtoise SVN'),
            _skill(Icons.storage_outlined, Colors.blue, 'Oracle'),
            _skill(Icons.storage_outlined, Colors.blue, 'SQL Server'),
          ],
        ),
        TableRow(
          children: [
            _skill(Icons.source_outlined, Colors.lightGreen, 'Source Tree'),
            _skill(Icons.code_outlined, Colors.grey, 'Angular JS'),
            _skill(Icons.code_outlined, Colors.blue, 'Highcharts js'),
            _skill(Icons.code_outlined, Colors.grey, 'JQuery'),
          ],
        ),
        TableRow(
          children: [
            _skill(Icons.code_outlined, Colors.grey, 'Flutter'),
            _skill(Icons.code_outlined, Colors.grey, 'React js'),
            _skill(Icons.code_outlined, Colors.grey, 'C#'),
            _skill(Icons.code_outlined, Colors.grey, 'Entity \nFramework'),
          ],
        ),
      ],
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    );
  }

  Widget _skill(IconData icon, Color color, String text) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            color: color,
            size: 26.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
