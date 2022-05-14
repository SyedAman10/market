import 'package:flutter/material.dart';
import 'package:flutter_login_ui/models/work.dart';
import 'package:flutter_login_ui/pages/FindWork/work_item.dart';

class WorkList extends StatelessWidget {
  final JobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        height: 160,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => WorkItem(JobList[index]),
            separatorBuilder: (_, index) => SizedBox(width: 15),
            itemCount: JobList.length));
  }
}
