
import 'package:bookme_mobile/api/controllers/base/base_controller.dart';
import 'package:bookme_mobile/dto/place/place/place_dto.dart';
import 'package:dio/dio.dart';

class PlaceController extends BaseController {

  Future<List<PlaceDto>> getAll() async {
      Response<Map<String, dynamic>> response = await super.authDio.get('/places');
      return (response.data)!['items'].map<PlaceDto>((i) => PlaceDto.fromJson(i)).toList();
  }

  Future<PlaceDto> getById(String id) async {
    final response = await super.authDio.get('/places/$id');
    return PlaceDto.fromJson(response.data);
  }
}