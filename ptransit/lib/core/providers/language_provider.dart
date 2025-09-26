import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../models/language.dart';
import '../libre_translate_service.dart';

class LanguageProvider extends ChangeNotifier {
  String _languageCode = 'en';
  String get languageCode => _languageCode;

  Language get currentLanguage => Language.getLanguageByCode(_languageCode);

  // LibreTranslate integration
  final LibreTranslateService _libreTranslateService = LibreTranslateService();

  void setLanguage(String code) {
    _languageCode = code;
    notifyListeners();
  }

  Future<String> translateDynamic(String text, {String? sourceLang}) async {
    if (_languageCode == 'en') return text;
    try {
      return await _libreTranslateService.translate(
        text: text,
        targetLang: _languageCode,
        sourceLang: sourceLang ?? 'en',
      );
    } catch (e) {
      return text;
    }
  }

  String translate(String key, {Map<String, String>? params}) {
    return AppStrings.translate(key, _languageCode, params: params);
  }

  List<Language> get supportedLanguages => Language.supportedLanguages;
}
