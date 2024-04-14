// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/component/about.dart';
import 'package:portfolio/component/contacts.dart';
import 'package:portfolio/component/educations.dart';
import 'package:portfolio/component/home.dart';
import 'package:portfolio/component/services.dart';
import 'package:portfolio/component/skills.dart';
import 'package:portfolio/navbar/navabr.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
// to check the device
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    //making resposive
    //if width is more than 700 than it is not mobilescreen  else less than 700 it is mobile screen
    isMobile = MediaQuery.of(context).size.width > 1000 ? false : true;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Nishan.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        //
        actions: isMobile ? null : navItems,
      ),
      endDrawer: isMobile
          ? Drawer(
              elevation: 300,
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      //whole home body
      body:const SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children:  [
                Home(),
                About(),
                Skills(),
                Services(),
                Contacts(),
                Education(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
