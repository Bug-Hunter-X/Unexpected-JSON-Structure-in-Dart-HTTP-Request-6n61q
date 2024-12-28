```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing the data - potential error here if the JSON structure is unexpected
      final data = jsonData['data']; 
      //further processing
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    //Error Handling
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled by a higher level
  }
}
```