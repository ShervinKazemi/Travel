import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:travel/app.dart';
import 'package:travel/model/provider/home_provider.dart';
import 'package:travel/model/repo/travels_repository.dart';
import 'package:travel/util/services/json_data_service.dart';

void main() {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent
    )
  );
  FlutterNativeSplash.remove();

  final TravelsRepository travelsRepository = TravelsRepository(JsonDataService());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider(travelsRepository))
      ],
      child: App(),
    ),
  );
}
