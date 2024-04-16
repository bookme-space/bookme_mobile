import 'package:bookme_mobile/api/controllers/auth_controller.dart';
import 'package:bookme_mobile/api/controllers/place_controller.dart';

class Api {

  const Api({
    required this.auth,
    required this.place
  });

  final AuthController auth;
  final PlaceController place;
}

final Api api = Api(
    auth: AuthController(),
    place: PlaceController()
  );