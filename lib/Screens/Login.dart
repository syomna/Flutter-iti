import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/Helper/helper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Form(
        key: _key,
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
            TextFormField(
              // onChanged: (value) {
              //   setState(() {
              //     email = value;
              //   });
              // },
              controller: _emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email cannot be empty';
                }
                if (!kEmailValid.hasMatch(value)) {
                  return 'Email is not valid';
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              // onChanged: (value) {
              //   setState(() {
              //     password = value;
              //   });
              // },
              controller: _passwordController,
              obscureText: isObscure,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password cannot be empty';
                }
                if (value.length < 6) {
                  return 'Please enter a password longer than 6 characters';
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue)),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: isObscure
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off))),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  Navigator.of(context).pushNamed('profile', arguments: {
                    'email': _emailController.text,
                    'password': _passwordController.text
                  });
                }
              },
              height: 50,
              minWidth: 200,
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
