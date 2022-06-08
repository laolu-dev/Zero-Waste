import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/authentication.dart';
import 'package:zero_waste/providers/user_data.dart';
import '../../widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  @override
  void dispose() {
    _password.dispose();
    _username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userLogin = Provider.of<UserAuth>(context);
    return Consumer<Authentication>(
      builder: (context, auth, child) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 76),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(appImage, width: 75, height: 75),
                    const SizedBox(height: 15),
                    Text("Login to your Account", style: headerText),
                    const SizedBox(height: 38),
                    //Username
                    TextFields(
                      controller: _username,
                      label: 'Username',
                      showIcon: false,
                      obscureText: false,
                      phoneField: false,
                    ),
                    const SizedBox(height: 16),
                    //Password
                    TextFields(
                      controller: _password,
                      label: 'Password',
                      showIcon: true,
                      obscureText: auth.visiblePassword,
                      phoneField: false,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Password cannot not be empty';
                        }
                        if (value.length < 8) {
                          return 'Your password must be at least 8 characters';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    //Forgot Password
                    Container(
                      constraints:
                          const BoxConstraints.expand(height: 15, width: 400),
                      child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/ForgotPassword'),
                        child:
                            Text("Forgot password?", style: forgotPasswordText),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 52,
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate() &&
                              userLogin.password == _password.text) {
                            //Nav to Home Page
                            Navigator.pushNamed(context, '/Home');
                          }
                        },
                        style: elevatedButtonStyleTwo,
                        child: const Text("Login"),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      children: [
                        Text("Don't have an Account? ", style: contentText),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/Signup'),
                          child: Text("Sign up", style: linkText),
                        )
                      ],
                    ),
                    const SizedBox(height: 13),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Row(
                        children: [
                          const Expanded(
                              child:
                                  Divider(thickness: 1, color: dividerColor)),
                          const SizedBox(width: 15),
                          Text("OR", style: orTextStyle),
                          const SizedBox(width: 15),
                          const Expanded(
                              child:
                                  Divider(thickness: 1, color: dividerColor)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Login using Social Networks", style: contentText),
                    const SizedBox(height: 16),
                    //Social Login
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        //Facebook Login
                        GestureDetector(
                          onTap: () {},
                          child: socialLoginContainer(
                            child: SvgPicture.asset(fbSvg),
                          ),
                        ),
                        const SizedBox(width: 12),
                        //Google Login
                        GestureDetector(
                          onTap: () {},
                          child: socialLoginContainer(
                            child: SvgPicture.asset(googleSvg),
                          ),
                        ),
                        const SizedBox(width: 12),
                        //LinkedIn Login
                        GestureDetector(
                          onTap: () {},
                          child: socialLoginContainer(
                            child: SvgPicture.asset(linklnSvg),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
