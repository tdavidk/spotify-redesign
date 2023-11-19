import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/res/media_res.dart';
import 'package:spotify/ui/pages/choose_sign_in_register_page.dart';
import 'package:spotify/ui/widgets/button_primary.dart';
import 'package:spotify/utils/context_extension.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            MediaRes.welcomingImage,
            width: context.width,
            height: context.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Image.asset(
                      MediaRes.iconLogo,
                      width: 196,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Enjoy Listening To Music',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colours.whiteLight,
                        ),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colours.grey,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ButtonPrimary(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ChooseSignInRegisterPage(),
                            ),
                          );
                        },
                        title: 'Get Started',
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
