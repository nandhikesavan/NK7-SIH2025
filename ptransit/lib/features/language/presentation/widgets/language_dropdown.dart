import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  final List<String> languages;
  final String selectedLanguage;
  final ValueChanged<String?>? onChanged;

  const LanguageDropdown({
    required this.languages,
    required this.selectedLanguage,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedLanguage,
      items:
          languages
              .map((lang) => DropdownMenuItem(value: lang, child: Text(lang)))
              .toList(),
      onChanged: onChanged,
    );
  }
}
