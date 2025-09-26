import 'dart:convert';
import 'package:http/http.dart' as http;

class LibreTranslateService {
  final String apiUrl;

  LibreTranslateService({this.apiUrl = 'https://libretranslate.de/translate'});

  Future<String> translate({
    required String text,
    required String targetLang,
    String sourceLang = 'auto',
  }) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'q': text,
        'source': sourceLang,
        'target': targetLang,
        'format': 'text',
      }),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['translatedText'] ?? '';
    } else {
      throw Exception('Failed to translate: ${response.body}');
    }
  }
}
