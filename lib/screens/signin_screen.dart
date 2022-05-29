import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(appImage, width: 75, height: 75),
              const SizedBox(height: 15),
              Text(
                "Login to your Account",
                style: textStyleOne,
              ),
              const SizedBox(height: 38),
              inputContainer(
                color: inputWhite,
                child: TextField(
                  decoration: inputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                  ),
                ),
              ),
              const SizedBox(height: 16),
              inputContainer(
                color: inputWhite,
                child: TextField(
                  decoration: inputDecoration(
                      hintText: "Password", labelText: "Password"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("Forget password"),
              const SizedBox(height: 24),
              inputContainer(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign in"),
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                children: [
                  const Text("Don't have an Account? "),
                  GestureDetector(child: const Text("Sign up"))
                ],
              ),
              const SizedBox(height: 13),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: lineColor)),
                  const SizedBox(width: 15),
                  const Text("OR"),
                  const SizedBox(width: 15),
                  Expanded(child: Divider(thickness: 1, color: lineColor)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleContainer(
                    child: Image.asset("name"),
                  ),
                  const SizedBox(width: 12),
                  circleContainer(
                    child: Image.asset("name"),
                  ),
                  const SizedBox(width: 12),
                  circleContainer(
                    child: Image.asset("name"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
