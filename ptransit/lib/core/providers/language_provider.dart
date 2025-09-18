import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../models/language.dart';

class LanguageProvider extends ChangeNotifier {
  String _languageCode = 'en';
  String get languageCode => _languageCode;
  
  Language get currentLanguage => Language.getLanguageByCode(_languageCode);

  void setLanguage(String code) {
    _languageCode = code;
    notifyListeners();
  }

  String translate(String key, {Map<String, String>? params}) {
    return AppStrings.translate(key, _languageCode, params: params);
  }

  List<Language> get supportedLanguages => Language.supportedLanguages;
}
