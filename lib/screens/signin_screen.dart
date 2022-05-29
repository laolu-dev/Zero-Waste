import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(appImage),
            Text(
              "Login to your Account",
              style: textStyleOne,
            ),
            inputContainer(
              color: inputWhite,
              child: TextField(
                decoration:
                    inputDecoration(hintText: "Email", labelText: "Email"),
              ),
            ),
            inputContainer(
              color: inputWhite,
              child: TextField(
                decoration: inputDecoration(
                    hintText: "Password", labelText: "Password"),
              ),
            ),
            const Text("Forget password"),
            inputContainer(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sign in"),
              ),
            ),
            Wrap(
              children: [
                const Text("Don't have an Account? "),
                GestureDetector(child: const Text("Sign up"))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: lineColor,
                  ),
                ),
                const SizedBox(width: 15),
                const Text("OR"),
                const SizedBox(width: 15),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: lineColor,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                circleContainer(
                  child: Image.asset("name"),
                ),
                const SizedBox(width: 20),
                circleContainer(
                  child: Image.asset("name"),
                ),
                const SizedBox(width: 20),
                circleContainer(
                  child: Image.asset("name"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
