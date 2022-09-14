import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/views/screen/selection_screen.dart';

class CreateSignScreen extends StatefulWidget {
  const CreateSignScreen({Key? key}) : super(key: key);

  @override
  State<CreateSignScreen> createState() => _CreateSignScreenState();
}

class _CreateSignScreenState extends State<CreateSignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const LoginSelection()));
          },
        ),
      ),
      backgroundColor: twitterbtnClr,
      body: Column(
        children: [
        Image.network(
          'http://store-images.s-microsoft.com/image/apps.26737.9007199266244427.c75d2ced-a383-40dc-babd-1ad2ceb13c86.ed1d047e-03d9-4cd8-a342-c4ade1e58951',
          height: 50,
        ),
      ]),
    );
  }
}
