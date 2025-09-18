import 'package:flutter/material.dart';

class VoiceButton extends StatelessWidget {
  final VoidCallback onPressed;

  const VoiceButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.mic), onPressed: onPressed);
  }
}
