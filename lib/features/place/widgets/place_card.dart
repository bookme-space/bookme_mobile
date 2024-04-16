import 'package:bookme_mobile/dto/place/place/place_dto.dart';
import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    required this.place,
  });

  final PlaceDto place;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListTile(
      leading: place.preview?.original != null ? Image.network(place.preview!.original) : null,
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(
        place.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(place.description,
          style: theme.textTheme.labelSmall),
      onTap: () {
        context.go(RoutesKeys.place + place.id);
      },
    );
  }
}