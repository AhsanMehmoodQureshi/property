import 'package:flutter/material.dart';
import 'package:property/pages/about.dart';
import 'package:property/pages/agent.dart';
import 'package:property/pages/agent_detail/agent1.dart';
import 'package:property/pages/agent_detail/agent2.dart';
import 'package:property/pages/agent_detail/agent3.dart';
import 'package:property/pages/agent_detail/agent4.dart';
import 'package:property/pages/agent_detail/agent5.dart';
import 'package:property/pages/bottom_bar.dart';
import 'package:property/pages/dealer.dart';
import 'package:property/pages/estate.dart';
import 'package:property/pages/explore.dart';
import 'package:property/pages/explore/explore1.dart';
import 'package:property/pages/faq.dart';
import 'package:property/pages/forgot.dart';
import 'package:property/pages/home.dart';
import 'package:property/pages/login.dart';
import 'package:property/pages/properties.dart';
import 'package:property/pages/property.dart';
import 'package:property/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/estate',
      routes: {
        '/estate':(context)=>const Estate(),
        '/property':(context)=>const Property(),
        '/agent':(context)=>const Agents(),
        '/login':(context)=>const Login(),
        '/forgot':(context)=>const Forgot(),
        '/register':(context)=>const Register(),
        '/home':(context)=>const Home(),
        '/bottom_bar':(context)=>const Bottom(),
        '/explore':(context)=>const Explore(),
        '/explore1':(context)=>const Explore1(),
        '/properties':(context)=>const Properties(),
        '/faq':(context)=>const Faq(),
        '/about':(context)=>const About(),
        '/dealer':(context)=>const Dealer(),
        '/agent1':(context)=>const Agent1(),
        '/agent2':(context)=>const Agent2(),
        '/agent3':(context)=>const Agent3(),
        '/agent4':(context)=>const Agent4(),
        '/agent5':(context)=>const Agent5(),

      },
    );
  }
}

