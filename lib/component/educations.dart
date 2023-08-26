import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  List<Widget> timeLine = [
    const Text(
      '20th april 2020',
      style: TextStyle(color: Colors.indigo, fontSize: 12.0),
    ),
    const Text(
      'Passed SEE',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    ),
    Text(
      'Passed 10th grade from this Mt. Everest Boarding School and with 3.24 GPA were secured by me.',
      style: TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(85.0),
      child: Column(
        children: [
          const Text(
            'Education',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              itemCount: 3,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                return SizedBox(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: timeLine,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // TimelineTile(node: node),
          // TimelineTile(node: node)
        ],
      ),
    );
  }
}
