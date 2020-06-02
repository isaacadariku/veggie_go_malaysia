import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:veggie_go_malaysia/services/database/firestore.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => FirestoreService());
}
