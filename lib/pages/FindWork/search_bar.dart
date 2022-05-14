import 'package:flutter/material.dart';
import './../widgets/header_widget.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _headerHeight = 200;
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      height: 250,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(
                './../../assets/images/search_bg.png',
              ),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text('Find Projects by searching through Search Bar',
              style: TextStyle(
                  height: 1.8,
                  color: Colors.white,
                  fontWeight: FontWeight.w400)),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(children: [
              Image.asset(
                './../../assets/images/search.png',
                width: 20,
              ),
              SizedBox(width: 10),
              Text(
                'Search',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
