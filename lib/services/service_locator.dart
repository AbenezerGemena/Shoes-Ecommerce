

import 'package:get_it/get_it.dart';
import 'package:shoes/routes/navigator_rout.dart';

final GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerSingleton<NavigatorRout>(NavigatorRout());
}