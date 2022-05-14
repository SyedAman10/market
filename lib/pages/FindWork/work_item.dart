import 'package:flutter/material.dart';
import 'package:flutter_login_ui/models/icons_text.dart';
import 'package:flutter_login_ui/models/work.dart';

class WorkItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  WorkItem(this.job, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(242, 241, 239, 239),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(job.logoUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    job.company,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(Icons.bookmark_outline_outlined
                  // job.isMark ? Icons.bookmark : Icons.bookmark_outline_outlined,
                  // color:
                  //     job.isMark ? Theme.of(context).primaryColor : Colors.black,
                  )
            ],
          ),
          SizedBox(height: 10),
          Text(
            job.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              IconText(Icons.location_on_outlined, job.location),
              if (showTime) IconText(Icons.access_time_outlined, job.time)
            ],
          ),
        ],
      ),
    );
  }
}
