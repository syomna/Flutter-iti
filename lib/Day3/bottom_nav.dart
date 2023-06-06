import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/nav_box.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                NavBox(icon: Icons.call, title: 'Call'),
                NavBox(icon: Icons.route, title: 'Route'),
                NavBox(icon: Icons.share, title: 'Share')
              ],
            )
          ],
        ),
      ),
    );
  }
}
