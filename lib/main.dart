import 'package:shop_app/config/locale/locale_settings.dart';
import 'package:shop_app/core/constants.dart';
import 'package:shop_app/core/resources/manager_assets.dart';
import 'package:shop_app/route/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'config/dependancy_injection.dart';

main() async {
  await initModule();
  runApp(
    EasyLocalization(
      supportedLocales: localeSettings.locales,
      path: ManagerPaths.translationsPath,
      startLocale: localeSettings.defaultLocale,
      fallbackLocale: localeSettings.defaultLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(
        Constants.designDeviceWidth,
        Constants.designDeviceHeight,
      ),
      builder: (context, child) {
        return GetMaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          onGenerateRoute: RouteGenerator.getRoute,
        );
      },
    );
  }
}
