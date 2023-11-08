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
          // const Divider(
          //   thickness: 2,
          // ),
          SizedBox(
            height: 40,
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 30)),
          Image.asset(
            "assets/img/img.png",
            height: 400.0,
            width: 400.0,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Nishan Pradhan',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const Text(
            'I am a developer and i am looking for dev role across Nepal.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: const [
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
