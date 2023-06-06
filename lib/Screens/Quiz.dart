import 'package:flutter/material.dart';
import 'package:task/Repo/repo.dart';
import 'package:task/Widgets/button.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final Repo _repo = Repo();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _repo.getCurrentQuestion().question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(
                  text: 'Yes',
                  color: Colors.green,
                  onPressed: () {
                    _repo.calculateScore(true);
                    setState(() {});
                    if (_repo.isLast) {
                      Navigator.of(context)
                          .pushNamed('score', arguments: _repo.score);
                    }
                  },
                ),
                Button(
                  text: 'No',
                  color: Colors.red,
                  onPressed: () {
                    _repo.calculateScore(false);
                    setState(() {});
                    if (_repo.isLast) {
                      Navigator.of(context)
                          .pushNamed('score', arguments: _repo.score);
                    }
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "You're in Question ${_repo.index + 1}",
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
