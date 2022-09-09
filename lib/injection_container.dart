import 'package:flutter_singleton/models/sample_model.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() async {
  sl.registerLazySingleton(() => SampleModel());
}
