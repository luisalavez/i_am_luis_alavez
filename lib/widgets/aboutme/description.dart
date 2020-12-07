import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        '''Systems engineer with knowledge of various css frameworks and js libraries, more than 3 years working with c# and sql server developing web systems using mvc.''',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
