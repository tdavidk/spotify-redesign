import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/ui/pages/navigator_page.dart';
import 'package:spotify/ui/pages/register_page.dart';
import 'package:spotify/ui/widgets/button_primary.dart';
import 'package:spotify/utils/context_extension.dart';

import '../../res/media_res.dart';
import '../widgets/custom_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 42,
                        height: 42,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colours.black.withOpacity(0.04),
                        ),
                        child: Image.asset(
                          MediaRes.iconBackButton,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        MediaRes.iconLogo,
                        width: 108,
                      ),
                    ),
                    const SizedBox(
                      width: 42,
                      height: 42,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colours.blackLight,
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'If you need any support ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colours.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'click here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colours.greenLight,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                CustomFormField(
                  controller: emailController,
                  hintText: 'Enter Username Or Email',
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                CustomFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: _obscureText,
                  toggleObscure: toggleObscure,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(left: 12),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Recovery password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colours.black1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ButtonPrimary(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavigatorPage(),
                      ),
                    );
                  },
                  height: 80,
                  title: 'Sign In',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: context.width,
                        decoration: const BoxDecoration(
                            gradient: Colours.linearLeftDivider),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colours.blackLight,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: context.width,
                        decoration: const BoxDecoration(
                            gradient: Colours.linearRightDivider),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      MediaRes.iconGoogle,
                      width: 29,
                    ),
                    const SizedBox(width: 58),
                    Image.asset(
                      MediaRes.iconApple,
                      width: 29,
                    ),
                  ],
                ),
                const SizedBox(height: 57),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not A Member ? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colours.blackLight,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colours.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 72),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
