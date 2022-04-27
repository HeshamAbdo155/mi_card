import 'package:flutter/material.dart';

class CardShape extends StatelessWidget {
  const CardShape({
    Key? key,
    required this.kIcon,
    required this.title,
    this.kOnPressed,
  }) : super(key: key);

  final IconData kIcon;
  final String title;
  final VoidCallback? kOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          leading: Icon(
            kIcon,
            color: Colors.teal[900],
          ),
          title: Center(
            child: TextButton(
              onPressed: kOnPressed,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'SourceSerifPro',
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
