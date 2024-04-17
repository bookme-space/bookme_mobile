import 'package:bookme_mobile/dto/place/place/place_dto.dart';
import 'package:bookme_mobile/features/place/utils/page_controller.dart';
import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({super.key, required this.id });

  final String id;

  @override
  State<PlacePage> createState() => _HomepageState();
}

class _HomepageState extends State<PlacePage> {
  bool isLoading = false;
  bool isFailed = false;
  PlaceDto? place;

  void handleInit() async {
    final result = await PlacePageController.fetchPlace(widget.id);

    if(result != null) {
      setState(() {
        place = result;
        isFailed = false;
      });
    } else {
      setState(() {
        isFailed = true;
      });
    }
  }

  void handleBack(BuildContext context) => context.go(RoutesKeys.home);

  @override
  void initState() {
    super.initState();
    handleInit();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios), onPressed: () => handleBack(context)),
        ),
        body: RefreshIndicator(
          backgroundColor: Colors.black45,
          onRefresh: () async {},
          child: buildBody(),
        )
    );
  }


  Widget buildBody() {
    if (!isLoading && place != null) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 160,
              width: 160,
              child: place?.preview?.original != null ? Image.network(place!.preview!.original) : null,
            ),
            const SizedBox(height: 24),
            Text(
              place?.name ?? '',
              style: const TextStyle(
                  fontSize: 26, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    }
    return const Center(child: CircularProgressIndicator());
  }
}
