import 'package:datos_https/src/models/photos.dart';
import 'package:http/http.dart' show Client;

class API{
  static const baseURL = 'https://jsonplaceholder.typicode.com/photos';

      final Client _client = Client();

      Future<List<Photos>> getPhotos() async {
        List<Photos> photosList;
        final response = await _client.get(baseURL);
        photosList = photosFromJson(response.body);
        return photosList;
      }

}