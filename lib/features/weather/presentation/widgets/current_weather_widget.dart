import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/weather_model.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';
import 'package:cached_network_image_web/cached_network_image_web.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({super.key, required this.weatherModel});
  final dynamic weatherModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              icon: Icon(Icons.arrow_back),
              color: AppColors.white1,
            ),
            Text(
              weatherModel.location.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Icon(
              Icons.add,
              color: AppColors.white1,
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          DateFormat("EEEE dd MMMM").format(DateTime.now()),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
                imageUrl: "https:${weatherModel.current.condition}")
          ],
        )
      ],
    );
  }
}
