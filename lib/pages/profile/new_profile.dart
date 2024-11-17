import 'package:flutter/material.dart';
import 'package:nova852/pages/profile/logged_in.dart';
import 'package:nova852/pages/profile/step_one.dart';
import 'package:nova852/pages/profile/step_two.dart';

class NewProfilePage extends StatefulWidget {
  const NewProfilePage({super.key});

  @override
  State<NewProfilePage> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfilePage> {
  final _block = [const StepOne(), const StepTwo(), const LoggedIn(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: const Text('會員'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {},
        ),
      ),
      body: _block[2],
    );
  }
}
 