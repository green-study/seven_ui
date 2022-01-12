import 'package:flutter/material.dart';
import 'package:reink/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[

              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Email Address',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            Text(
              'Forgot your password?',
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              child: const Text('Log In'),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
            const SizedBox(height: 80.0),

          ],
        ),
      ),
    );
  }
}
