import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Home',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Syed Aman',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Container(),
              ClipOval(
                child: Image.asset(
                  './../../assets/images/avatar.png',
                  width: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
