# mobile_bootcamp_example

A new Flutter project.

## Getting Started
 #### 1. Firstly, you need to create a `.env` file in the root directory of project.
 #### 2. Next, define the BASE_URL and API_KEY in your .env file:
         BASE_URL=https://api.weatherapi.com/v1
         API_KEY=`your_api_key`
 #### 3. After that, open the /lib/env directory and remove the `env.g.dart` file. Then, execute the command `flutter clean` in the terminal.
 #### 4. Generate objects with the command `dart run build_runner build --delete-conflicting-outputs` in the terminal.
 #### 5. If you have issues, try `flutter pub get`
 #### 6. Run the project

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
