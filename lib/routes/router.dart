

import 'package:auto_route/auto_route_annotations.dart';
import 'package:boilerplate/ui/homePage/homepage_view.dart';

/// run these code in terminal to generate route setting
/// flutter packages pub run build_runner watch --delete-conflicting-outputs (while development)
/// flutter packages pub run build_runner build (one time)

@MaterialAutoRouter(routes: [
 
  MaterialRoute(page: HomePageView,),
])
class $Router {}


