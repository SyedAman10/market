import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class JobFinder extends StatelessWidget {
  const JobFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey.withOpacity(0.1),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HomeAppBar()],
        )
      ],
    ));
  }
}
