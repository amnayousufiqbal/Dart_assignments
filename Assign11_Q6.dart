void main() {
  Map<String, Map<String, String>> world = {
    'USA': {
      'capitalCity': 'Washington D.C.',
      'currency': 'USD',
      'language': 'English'
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Yen',
      'language': 'Japanese'
    },
    'Pakistan': {
      'capitalCity': 'Islamabad',
      'currency': 'Rupees',
      'language': 'urdu'
    }
  };
  print(
      'Capital: ${world['Pakistan']!['capitalCity']}, Currency: ${world['Pakistan']!['currency']}');
}
