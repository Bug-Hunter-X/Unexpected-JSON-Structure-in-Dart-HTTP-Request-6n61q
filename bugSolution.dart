```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the key 'data' exists before accessing it.
      if (jsonData.containsKey('data')) {
        final data = jsonData['data'];
          //further processing
      } else {
        //Handle missing 'data' key gracefully.
        print('Error: The JSON response does not contain the expected key: data');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow;
  }
}
```