import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // width: context.screenWidth < 900
      //     ? context.screenWidth * 0.9
      //     : context.screenWidth * 0.3,
      decoration: const BoxDecoration(color: Colors.white),
      // padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/img/logo.png",
                  height: 600.0,
                  // width: 400.0,
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 560),
                  child: Text(
                    'Nishan Pradhan',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'I am a developer and i am looking for dev role across Nepal.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text('Full stack Developer',
                    style: TextStyle(fontSize: 11)),
              ),
              Chip(
                label:
                    Text('Web App Developer', style: TextStyle(fontSize: 11)),
              ),
              Chip(
                label: Text(' App Developer', style: TextStyle(fontSize: 11)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
