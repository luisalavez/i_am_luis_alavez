import 'package:flutter/material.dart';

class SkillsTablet extends StatelessWidget {
  const SkillsTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _skill(Icons.style_outlined, Colors.pink, 'Semantic UI'),
            _skill(Icons.style_outlined, Colors.pink, 'Materialize'),
            _skill(Icons.style_outlined, Colors.pink, 'Bootstrap'),
          ],
        ),
        TableRow(children: [
          _skill(Icons.cloud, Colors.blue, 'Azure'),
          _skill(Icons.source_outlined, Colors.lightGreen, 'Git'),
          _skill(Icons.source_outlined, Colors.lightGreen, 'Turtoise SVN'),
        ]),
        TableRow(
          children: [
            _skill(Icons.storage_outlined, Colors.blue, 'Oracle'),
            _skill(Icons.storage_outlined, Colors.blue, 'SQL Server'),
            _skill(Icons.source_outlined, Colors.lightGreen, 'Source Tree'),
          ],
        ),
        TableRow(
          children: [
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
          ],
        ),
        TableRow(children: [
          _skill(Icons.code_outlined, Colors.grey, 'Entity \nFramework'),
          Container(),
          Container(),
        ])
      ],
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    );
  }

  Widget _skill(IconData icon, Color color, String text) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
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
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
