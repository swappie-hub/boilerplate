
import 'package:boilerplate/ui/homePage/homepage_view.dart';
import 'package:boilerplate/ui/searchByName/search_by_name_view.dart';
import 'package:boilerplate/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/routes/router.gr.dart' as gr;
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

import 'di/locator.dart';
import 'di/provider_setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await setupLocator();
    // setupDialogUi();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(SetOrientation());
    });
  } catch (error) {
    print(error.toString());
    print('Locator setup has failed');
  }
}

class SetOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MyApp();
   
  }
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        // localizationsDelegates: context.localizationDelegates,
        // supportedLocales: context.supportedLocales,
        // locale: context.locale,

        // initialRoute: gr.Routes.homePageView,
        onGenerateRoute: gr.Router().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        home: HomePageView(),
      ),
    );
  }
}
