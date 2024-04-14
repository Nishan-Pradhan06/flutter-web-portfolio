import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  List<Map<String, String>> educationData = [
    {
      'date': '2020',
      'title': 'Passed SEE',
      'description':
          'Passed 10th grade from this Mt. Everest Boarding School and with 3.24 GPA.',
    },
    // Add more data points as needed
    {
      'date': '2022',
      'title': 'Passed +2',
      'description':
          'Passed +2 from  Siddhartha Secondary School and with 2.94 GPA.',
    },
    {
      'date': '2023',
      'title': 'Bachelor',
      'description':
          'Running Bachelor of Computer Application From Itahari Namuna College.',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, // Provide a finite height
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Education',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Timeline.tileBuilder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                builder: TimelineTileBuilder.fromStyle(
                  itemCount: educationData.length,
                  contentsAlign: ContentsAlign.alternating,
                  contentsBuilder: (context, index) {
                    final items = educationData[index];
                    return SizedBox(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items['date']!,
                                style: const TextStyle(
                                    color: Colors.indigo, fontSize: 12.0),
                              ),
                              Text(
                                items['title']!,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ), // Add title here
                              Text(
                                items['description']!,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 16.0),
                              ), // Add description here
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
