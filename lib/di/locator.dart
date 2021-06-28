import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locator.config.dart';
// Important. Import the locator.iconfig.dart file

final locator = GetIt.instance;

@injectableInit
void setupLocator() async => $initGetIt(locator);
