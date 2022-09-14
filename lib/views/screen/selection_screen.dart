import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/custom_button.dart';

import '../../utils/colors.dart';
import 'create_signscreen.dart';

class LoginSelection extends StatefulWidget {
  const LoginSelection({Key? key}) : super(key: key);

  @override
  State<LoginSelection> createState() => _LoginSelectionState();
}

class _LoginSelectionState extends State<LoginSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Image.network(
            'https://help.twitter.com/content/dam/help-twitter/brand/logo.png',
            height: 50,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'See What\'s \nHappening world \nright now',
                style: TextStyle(
                    color: textClr, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 70),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: textClr, width: 2)),
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          const Text('Sign In With Google')
                        ]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'or',
                    style: TextStyle(
                        color: greyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Create Account',
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const CreateSignScreen()));
                },
                color: whiteClr,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have An Account Already?',
                    style: TextStyle(
                        color: textClr,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          color: twitterbtnClr,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
