
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app1/domain/di/injectable.configure.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async =>
    getIt.init(environment: Environment.prod);