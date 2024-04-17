
import 'dart:async';

import 'package:bookme_mobile/dto/place/place/place_dto.dart';
import 'package:bookme_mobile/repositories/place_repository.dart';
import 'package:bookme_mobile/utils/toast/toast.dart';

class PlacePageController {

  static Future<PlaceDto?> fetchPlace(String id) async {
    try {
      final result = await placeRepository.getById(id);
      return result;
    } catch (error) {
      //(true);
      Toast.error("Something went wrong...");
      return null;
    }
  }
}