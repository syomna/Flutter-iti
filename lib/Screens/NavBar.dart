import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/Day3/images.dart';
import 'package:task/Screens/Login.dart';
import 'package:task/Screens/Quiz.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[index]),
      ),
      body: children[index],
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text('Drawer')),
            ListTile(
              onTap: () {
                onTap(0);
              },
              title: const Text('Login'),
              leading: const Icon(Icons.login),
            ),
            ListTile(
              onTap: () {
                onTap(1);
              },
              title: const Text('Quiz'),
              leading: const Icon(Icons.quiz),
            ),
            ListTile(
              onTap: () {
                onTap(2);
              },
              title: const Text('Images'),
              leading: const Icon(Icons.image),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
            BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Images')
          ]),
    );
  }

  List<Widget> children = [const Login(), const Quiz(), const Images()];
  List<String> appBarTitles = ['Login', 'Quiz App', 'Photos App'];

  onTap(int i) {
    setState(() {
      index = i;
    });
    Navigator.of(context).pop();
  }
}
