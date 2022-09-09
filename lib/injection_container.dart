import 'package:get_it/get_it.dart';
import 'package:flutter_singleton/models/sample_model.dart';

final sl = GetIt.instance;

void init() async {
  sl.registerLazySingleton(() => SampleModel());
}
