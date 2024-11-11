import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String title, text;

  const InfoText({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$title: ',
          style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
            color: Colors.blueGrey[300],
          ),
        ),
        Text(
          text,
          style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
            color: Colors.blueGrey[100],
          ),
        ),
      ],
    );
  }
}
