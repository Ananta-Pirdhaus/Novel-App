// // unit_testing.dart

// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart' as http;
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:project/app/modules/home_screen/controllers/home_screen_controller.dart';

// import 'unit_testing.mocks.dart';

// @GenerateMocks([http.Client])
// void main() {
//   group('Home Screen Controller Tests', () {
//     late HomeScreenController homeScreenController;
//     late MockClient mockClient;

//     setUp(() {
//       mockClient = MockClient();
//       homeScreenController = HomeScreenController(httpClient: mockClient);
//     });

//     test(
//         'ambilData should load data into booksList when API call is successful',
//         () async {
//       final mockResponse = http.Response(
//         '{"results": {"books": [{"title": "Book Title"}]}}',
//         200,
//       );

//       // Mocking the http get call for successful response
//       when(mockClient.get(Uri.parse(
//               'https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=sWjaytP0HLL6rPPZzY2XFsJRTxf1gO7a')))
//           .thenAnswer((_) async => mockResponse);

//       // Call the method to fetch data
//       await homeScreenController.ambilData();

//       // Verify that booksList is populated
//       expect(homeScreenController.booksList.length, 1);
//       expect(homeScreenController.booksList[0].title, 'Book Title');
//     });

//     test('ambilData should handle API errors', () async {
//       // Mocking API error
//       when(mockClient.get(Uri.parse(
//               'https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=sWjaytP0HLL6rPPZzY2XFsJRTxf1gO7a')))
//           .thenAnswer(
//               (_) async => http.Response('{"error": "API Error"}', 500));

//       // Call the method to fetch data
//       await homeScreenController.ambilData();

//       // Verify that booksList is empty
//       expect(homeScreenController.booksList.isEmpty, true);

//       // Verify that an error is set
//       expect(homeScreenController.error.value, 'Error when requesting data');
//     });
//   });
// }
