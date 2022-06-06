import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/user_data.dart';
import '../../widgets/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final userDetails = Provider.of<CreateUser>(context);
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
                    controller: userDetails.nameController,
                    label: 'Full Name',
                    showText: false,
                    phoneField: false,
                  ),
                  const SizedBox(height: 16),
                  //Phone Number
                  TextFields(
                    controller: userDetails.phoneController,
                    label: 'Phone Number',
                    showText: false,
                    phoneField: true,
                  ),
                  const SizedBox(height: 16),
                  //Home Address
                  TextFields(
                    controller: userDetails.addressController,
                    label: 'Home Address',
                    showText: false,
                    phoneField: false,
                  ),
                  const SizedBox(height: 16),
                  //State
                  TextFields(
                    controller: userDetails.stateController,
                    label: 'State',
                    showText: false,
                    phoneField: false,
                  ),
                  const SizedBox(height: 16),
                  //Password
                  TextFields(
                    controller: userDetails.passwordController,
                    label: 'Password',
                    showText: true,
                    phoneField: false,
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
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
                          userDetails.getUserName();
                          userDetails.getPhoneNo();
                          userDetails.getAddress();
                          userDetails.getState();
                          userDetails.getPassword();
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
                        Expanded(
                          child: Divider(thickness: 1, color: dividerColor),
                        ),
                        const SizedBox(width: 15),
                        Text("OR", style: orTextStyle),
                        const SizedBox(width: 15),
                        Expanded(
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
                      socialLoginContainer(
                        child: SvgPicture.asset(fbSvg),
                      ),
                      const SizedBox(width: 12),
                      socialLoginContainer(
                        child: SvgPicture.asset(googleSvg),
                      ),
                      const SizedBox(width: 12),
                      socialLoginContainer(
                        child: SvgPicture.asset(linklnSvg),
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
