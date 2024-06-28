import 'package:flutter/material.dart';
import 'package:nova852/pages/profile/step_one.dart';
import 'package:nova852/pages/profile/step_two.dart';

class NewProfilePage extends StatefulWidget {
  const NewProfilePage({super.key});

  @override
  State<NewProfilePage> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfilePage> {

  final _block = [StepOne(), StepTwo(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('會員'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: _block[1],
    );
  }
}
 