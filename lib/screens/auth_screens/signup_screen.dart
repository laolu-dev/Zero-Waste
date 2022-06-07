import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/authentication.dart';
import 'package:zero_waste/providers/user_data.dart';
import '../../widgets/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final submitDetails = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 45),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(appImage, width: 75, height: 75),
                  const SizedBox(height: 15),
                  Text("Register an Account", style: headerText),
                  const SizedBox(height: 15),
                  //Name
                  TextFields(
                    controller: _nameController,
                    label: 'Full Name',
                    showIcon: false,
                    phoneField: false,
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  //Phone Number
                  TextFields(
                    controller: _phoneController,
                    label: 'Phone Number',
                    showIcon: false,
                    phoneField: true,
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  //Home Address
                  TextFields(
                    controller: _addressController,
                    label: 'Home Address',
                    showIcon: false,
                    phoneField: false,
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  //State
                  TextFields(
                    controller: _stateController,
                    label: 'State',
                    showIcon: false,
                    phoneField: false,
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  //Password
                  Consumer<Authentication>(
                    builder: (context, auth, child) => TextFields(
                      controller: _passwordController,
                      label: 'Password',
                      showIcon: true,
                      phoneField: false,
                      obscureText: auth.visiblePassword,
                      validator: (value) {
                        if (value!.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
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
                        if (_formKey.currentState!.validate()) {
                          submitDetails.getName(_nameController.text);
                          submitDetails.getPhone(_phoneController.text);
                          submitDetails.getAddress(_addressController.text);
                          submitDetails.getState(_stateController.text);
                          submitDetails.getPassword(_passwordController.text);
                          Navigator.pushNamed(context, '/Reason');
                        }
                      },
                      style: elevatedButtonStyleTwo,
                      child: const Text("Next"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    children: [
                      Text("Already have an account? ", style: contentText),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/Login'),
                        child: Text("Login", style: linkText),
                      )
                    ],
                  ),
                  const SizedBox(height: 13),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(thickness: 1, color: dividerColor),
                        ),
                        const SizedBox(width: 15),
                        Text("OR", style: orTextStyle),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Divider(thickness: 1, color: dividerColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Login using Social Networks", style: contentText),
                  const SizedBox(height: 16),
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
    );
  }
}
