import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/FindWork/search_bar.dart';
import 'package:flutter_login_ui/pages/FindWork/tag_list.dart';
import 'package:flutter_login_ui/pages/FindWork/work_list.dart';

import 'home_app_bar.dart';
import 'search_bar.dart';
import 'tag_list.dart';
import 'work_list.dart';

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
                child: Container(color: Colors.white),
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
            children: [HomeAppBar(), SearchBar(), TagList(), WorkList()],
          )
        ],
      ),
    );
  }
}
