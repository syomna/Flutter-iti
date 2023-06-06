import 'package:flutter/material.dart';
import 'package:task/Day3/text_filed_container.dart';

class TextForm extends StatelessWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextFieldContainer(
              widget: Text('Email'),
            ),
            TextFieldContainer(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text('Password'), Icon(Icons.remove_red_eye)],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {},
              height: 50,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Forgot password?'),
            const SizedBox(
              height: 20,
            ),
            const Text('Not a member? Sign up now.'),
          ],
        ),
      ),
    );
  }
}
