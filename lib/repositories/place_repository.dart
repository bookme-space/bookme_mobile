

import 'package:bookme_mobile/api/api.dart';
import 'package:bookme_mobile/dto/place/place/place_dto.dart';

class PlaceRepository {

  Future<List<PlaceDto>> getAll(String id) async {
    final response = await api.place.getAll();
    // TODO: Implement save to local storage
    return response;
  }

  Future<PlaceDto> getById(String id) async {
    final response = await api.place.getById(id);
    // TODO: Implement save to local storage
    return response;
  }

}