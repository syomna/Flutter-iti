import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GroupList extends StatelessWidget {
  List source = [
    {
      'title': 'Group 1',
      'data': [
        'name 1 1',
        'name 1 2',
      ],
    },
    {
      'title': 'Group 2',
      'data': [
        'name 2 1',
        'name 2 2',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: source.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      Text(
                        source[index]['title'],
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ...source[index]['data']
                          .map((e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: ListTile(
                                  onTap: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  tileColor: Colors.grey.shade200,
                                  leading: const Icon(Icons.person),
                                  title: Text(e),
                                  trailing: const Icon(Icons.arrow_forward_ios),
                                ),
                              ))
                          .toList()
                    ],
                  )),
        ),
      ),
    );
  }
}
