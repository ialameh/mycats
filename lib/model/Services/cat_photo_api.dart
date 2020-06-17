import 'package:http/http.dart';
import 'package:dartz/dartz.dart';
class CatPhotoApi {

  final String endpoint = 'api.thecatapi.com';

  Future<Either<Exception, String>> getRandomCatPhoto() async {
    try {
      final queryParameters = {
        "api_key": "44250fcb-18a9-4a88-a5cf-9ca88cf2a352",
      };
      final uri = Uri.https(endpoint, "/v1/images/search", queryParameters);
      final response = await http.get(uri);
      return Right(response.body);
    } catch (e) {
      return (Left(e));
    }
  }
  }

