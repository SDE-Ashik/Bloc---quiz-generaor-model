import 'package:flutter/material.dart';


class ErrorMessages extends StatelessWidget {
  final String msg;
  const ErrorMessages({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
          size: 40,
        ),
        SizedBox(
          height: 20,
          child: Text("$msg"),
        )
      ],
    );
  }
}
