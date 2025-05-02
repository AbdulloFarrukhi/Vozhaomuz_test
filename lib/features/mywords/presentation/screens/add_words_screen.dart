import 'package:flutter/material.dart';

class AddWordsScreen extends StatefulWidget {
  const AddWordsScreen({super.key});

  @override
  State<AddWordsScreen> createState() => _AddWordsScreenState();
}

class _AddWordsScreenState extends State<AddWordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Go Back',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        width: double.infinity,
        child: Text(
          textAlign: TextAlign.center,
          'You will add it \n      later🤷‍♂️',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
