import 'package:bookme_mobile/dto/place/place/place_dto.dart';
import 'package:bookme_mobile/features/home/utils/page_controller.dart';
import 'package:bookme_mobile/features/home/widgets/home_error.dart';
import 'package:bookme_mobile/features/home/widgets/place_card.dart';
import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:bookme_mobile/utils/data_providers/secure_storage/jwt_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isLoading = false;
  bool isFailed = false;
  List<PlaceDto> places = [];

  void handleRedirectToLogin(BuildContext context) {
    context.go(RoutesKeys.login);
  }

  void handleReload() async {
    final result = await HomePageController.fetchPlaces();

    if(result != null) {
      setState(() {
        places = result;
        isFailed = false;
      });
    } else {
      setState(() {
        isFailed = true;
      });
    }
  }

  Future<void> handleLogout (BuildContext context) async {
    await JwtTokenSecureStorageProvider()
        .deleteJwtTokenPair();
    handleRedirectToLogin(context);
  }

  @override
  void initState() {
    super.initState();
    handleReload();
  }

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("All Places"),
        actions: [
          ElevatedButton.icon(
              onPressed: () => handleRedirectToLogin(context),
              icon: const Icon(Icons.logout,color: Colors.black),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              label: const Text("Logout", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15))
          )
        ],
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.black45,
        onRefresh: () async {},
        child: buildBody(context),
      )
    );
  }

  Widget buildBody(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    if(isFailed) {
      return HomeError(reload: handleReload);
    }

    if(isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    else {
      return ListView.separated(
          padding: const EdgeInsets.only(top: 16),
          itemCount: places.length,
          separatorBuilder: (context, index) =>
              Divider(color: theme.dividerColor),
          itemBuilder: (context, i) {
            final place = places[i];
            return PlaceCard(place: place);
          });
      }
  }
}
