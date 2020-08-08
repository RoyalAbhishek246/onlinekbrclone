import 'package:flutter/material.dart';
import 'UI/homepage.dart';

void main() {
  runApp(OnlineKhabar());
}

class OnlineKhabar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Khabar",
      home: homepage(),
    );
  }
}
