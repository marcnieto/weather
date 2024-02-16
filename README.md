# Weather by marcnieto
A Flutter Weather app by Marc Nieto.

<img src="https://github.com/marcnieto/weather/assets/9157172/b6ca3fca-9abc-4ec3-84d5-3fc4db7b81bd" width="300">
<img src="https://github.com/marcnieto/weather/assets/9157172/666898f0-b37f-4e8f-957e-218f726746a0" width="300">

# Building

Before you build, make sure to run these commands to make sure your version of Flutter is up to date, and your environment is setup to build this app.
Run the following commands to make sure your environment is set.

```
flutter clean
flutter doctor
```

I've heavily utilized some of Flutter's best features including Bloc, Provider, Mockito, Freezed, etc. These packages will need to be fetched from Pub.dev.
You can do that by running the following command on the root directory.

```
flutter pub get
```

One particularly nice feature of Flutter is Code generation, that is used in many places to supplement development and functionality in the app.
You must run this command in order to generate the necessary files.

```
dart run build_runner build
```

To build the app onto simulator or device, run

```
flutter run
```

I've conveniently added a shell script to run all of these commands for you. You can run this command

```
sh build.sh
```

# Testing

I've built a number of tests that test the functionality of the app by mocking data sources and creating expected states, and also by testing the integration itself.
You can run the test suite with this command

```
flutter test
```

