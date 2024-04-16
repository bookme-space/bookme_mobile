
import 'package:bookme_mobile/api/controllers/base/base_controller.dart';
import 'package:bookme_mobile/dto/place/place/place_dto.dart';

class PlaceController extends BaseController {

  Future<List<PlaceDto>> getAll() async {
    final response = await super.authDio.get('/places');
    final list = response.data.items
        .map((item) => PlaceDto.fromJson(item))
        .toList();
    return list;
  }

  Future<PlaceDto> getById(String id) async {
    final response = await super.authDio.get('/places/$id');
    return PlaceDto.fromJson(response.data);
  }
}