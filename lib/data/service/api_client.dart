import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flame/data/dto/photos_list_dto.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(
  baseUrl: 'https://www.flickr.com'
)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/services/rest/')
  Future<PhotosListDto> authEmailPart1({
    @Query('method') required String method,
    @Query('api_key') required String apiKey,
    @Query('text') required String text,
    @Query('format') required String format,
    @Query('nojsoncallback') required int noJsonCallback,
  });

}
