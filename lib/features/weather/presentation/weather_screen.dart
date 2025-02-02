import 'package:flutter/material.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/weather_by_days_widget.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/current_weather_widget.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(spacing: 20, children: [
              CurrentWeatherWidget(weatherModel: mockWeatherModel),
              WeatherByDaysWidget()
            ])),
      )),
    );
  }
}
