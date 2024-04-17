

import 'dart:async';

import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:bookme_mobile/utils/helpers/is_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

FutureOr<String?> appRouteRedirect(BuildContext context, GoRouterState state) async {


  final isAuth = await CheckAuthHelper.isAuth;

  if(
    isAuth &&
      (state.matchedLocation == RoutesKeys.registration
          || state.matchedLocation == RoutesKeys.login
      )
  ) {
    return RoutesKeys.home;
  }

  if(
  !isAuth &&
      (state.matchedLocation != RoutesKeys.registration
          && state.matchedLocation != RoutesKeys.login
      )
  ) {
    return RoutesKeys.login;
  }

  return null;
}