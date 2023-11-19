import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/ui/pages/register_page.dart';
import 'package:spotify/ui/pages/sign_in_page.dart';
import 'package:spotify/ui/widgets/button_primary.dart';

class ChooseSignInRegisterPage extends StatelessWidget {
  const ChooseSignInRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   title: Row(
      //     children: [
      //       Container(
      //         width: 40,
      //         height: 40,
      //         padding: const EdgeInsets.all(4),
      //         margin: const EdgeInsets.symmetric(horizontal: 8),
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colours.black.withOpacity(0.04),
      //         ),
      //         child: Image.asset(
      //           MediaRes.iconBackButton,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              MediaRes.loginRadialTopBgImage,
              width: 250,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              MediaRes.loginRadialBgImage,
              width: 300,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Row(
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
                    ],
                  ),
                  const SizedBox(height: 70),
                  Image.asset(
                    MediaRes.iconLogo,
                    width: 235,
                  ),
                  const SizedBox(height: 55),
                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colours.blackLight,
                    ),
                  ),
                  const SizedBox(height: 17),
                  const Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colours.grey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ButtonPrimary(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ),
                            );
                          },
                          height: 73,
                          title: 'Register',
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Sign in',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colours.black1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
