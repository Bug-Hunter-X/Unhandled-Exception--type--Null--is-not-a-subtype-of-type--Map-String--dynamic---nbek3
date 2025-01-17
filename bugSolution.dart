```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic>? data = jsonDecode(response.body);
      //Proper null check and handling
      if (data != null && data.isNotEmpty && data[0] is Map && data[0].containsKey('name')) {
        print(data[0]['name']);
      } else {
        print('Data is null, empty, or improperly formatted.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```