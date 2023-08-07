import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isPasswordSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea (
        child: Column(
          children: [
            Padding (
              padding: const EdgeInsets.all(24.0),
              child: Form(child: TextFormField(decoration: const InputDecoration(hintText: "이메일을 적어주세요."), ) ),
            ),

            Padding (
              padding: const EdgeInsets.all(24.0),
              child: Form(child: TextFormField(decoration:  InputDecoration(hintText: "비밀번호를 적어주세요.",
                  suffixIcon: isPasswordSelected

                      // 비밀 번호가 보이면 이 위젯이 실행
                      ? IconButton(onPressed: () {
                        setState(() {
                          isPasswordSelected = !isPasswordSelected;
                        });
                      }, icon: Icon(Icons.remove_red_eye))

                      // 비밀 번호가 안 보이면 이 위젯이 실행
                      : IconButton(onPressed: () {
                        setState(() {
                          isPasswordSelected = !isPasswordSelected;
                        });
                      }, icon: Icon(Icons.remove_red_eye_outlined))),
                obscureText: isPasswordSelected ? true : false,

              ) ),
            ),
          ],
        ),
      ),
    );
  }
}
