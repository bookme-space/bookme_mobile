

import 'package:bookme_mobile/api/api.dart';
import 'package:bookme_mobile/dto/place/place/place_dto.dart';

class PlaceRepository {

  Future<List<PlaceDto>> getAll() async {
    print("вызываем ошибку здесь");
    try {
      print("11111111111111");

      final response = await api.place.getAll();
      print("22222222222");
    } catch (e) {
      print("333333333333333");
      print(e);
    }
    final response = await api.place.getAll();

    print("response");
    print(response);
    // TODO: Implement save to local storage
    return response;
  }

  Future<PlaceDto> getById(String id) async {
    final response = await api.place.getById(id);
    // TODO: Implement save to local storage
    return response;
  }

}

final placeRepository = PlaceRepository();