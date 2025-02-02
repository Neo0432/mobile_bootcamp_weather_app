import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/widgets/submit_form.dart';
import 'package:mobile_bootcamp_example/uikit/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_bootcamp_example/resources/app_images.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.chooseCity),
          centerTitle: true,
          leading: Icon(
            Icons.location_city_rounded,
            color: AppColors.white1,
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Spacer(),
                Image.asset(AppImages.weatherIcon),
                SizedBox(
                  height: 30,
                ),
                SubmitForm(),
                Spacer()
              ],
            ),
          ),
        ));
  }
}
