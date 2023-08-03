import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold (
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text (
              'test1',
              style: TextStyle (
                color: Colors.black,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
