import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/config/router/route_utils.dart';
import 'package:zero_waste/core/constants/constants.dart';
import 'package:zero_waste/core/constants/styles/colors.dart';




import '../../widgets/social_login.dart';
import '../../widgets/user_info_textfield.dart';

class ForgotPassword extends StatefulWidget {
  static const id = 'ForgotPassword';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late final TextEditingController _email;
  late final GlobalKey<FormState> _form;
  late final FocusNode _emailNode;

  @override
  void initState() {
    super.initState();
    _form = GlobalKey<FormState>();
    _emailNode = FocusNode();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _emailNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            children: [
              Image.asset(AppConstants.appIcon, width: 90, height: 90),
              const SizedBox(height: 15),
              Text(
                "Forgot Password",
                style: GoogleFonts.jost(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              Text(
                'Enter the email you used to register',
                style: TextStyle(color: AppColors.logIn, fontSize: 16),
              ),
              const SizedBox(height: 32),
              Form(
                key: _form,
                child: UserInput(
                  label: 'Email',
                  controller: _email,
                  focusNode: _emailNode,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a email";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24),
              // Consumer<AuthController>(
              //   builder: (context, email, child) {
              //     return email.state == AuthState.loading
              //         ? const CircularProgressIndicator()
              //         : AppButton(
              //             btnName: 'Reset',
              //             btn: () async {
              //               if (_form.currentState!.validate()) {
              //                 _emailNode.unfocus();
              //                 // await email.requestToUpdatePassword(_email.text);
              //                 checkErrorState(email);
              //               }
              //             },
              //           );
              //   },
              // ),
              const SizedBox(height: 16),
              Wrap(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: AppColors.logIn, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, RouteNames.login),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 13),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                            thickness: 1, color: AppColors.dividerColor)),
                    const SizedBox(width: 15),
                    Text(
                      "OR",
                      style: TextStyle(
                          color: AppColors.orColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                        child: Divider(
                            thickness: 1, color: AppColors.dividerColor)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Login using Social Networks",
                style: TextStyle(color: AppColors.logIn, fontSize: 16),
              ),
              const SizedBox(height: 16),
              const SocialLogin()
            ],
          ),
        ),
      ),
    );
  }

  // void checkErrorState(AuthController email) {
  //   if (email.state == AuthState.completed) {
  //     Navigator.pushNamed(context, PasswordVerification.id,
  //         arguments: _email.text);
  //   }
  //   if (email.state == AuthState.hasError) {
  //     // ScaffoldMessenger.of(context).showSnackBar(
  //     //   SnackBar(
  //     //     duration: const Duration(milliseconds: 1000),
  //     //     content: Text(email.error!),
  //     //   ),
  //     // );
  //   }
  // }
}
