
import 'dart:async';

import 'package:bookme_mobile/dto/place/place/place_dto.dart';
import 'package:bookme_mobile/repositories/place_repository.dart';
import 'package:bookme_mobile/utils/toast/toast.dart';

class HomePageController {

  static Future<List<PlaceDto>?> fetchPlaces() async {
    try {
      final result = await placeRepository.getAll();
      return result;
    } catch (error) {
      //(true);
      Toast.error("Something went wrong...");
      return null;
    }
  }
}