import 'package:flutter/material.dart';
import 'package:layout/components/sections/account_actions.dart';
import 'package:layout/components/sections/account_points.dart';

import '../components/sections/header.dart';
import '../components/sections/recent_activity.dart';

class Home extends StatelessWidget {
const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(body: Column(
      children: const <Widget>[
        Header(),
        RecentActivity(),
        AccountActions(),
        AccountPoints(),
      ],
    ),);
  }
}