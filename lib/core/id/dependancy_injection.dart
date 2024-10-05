import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:omar_ahmed_course/core/networking/api_services.dart';
import 'package:omar_ahmed_course/core/networking/dio_factory.dart';
import 'package:omar_ahmed_course/features/login/data/repo/login_repo.dart';
import 'package:omar_ahmed_course/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<GetIt> setUpGetIt(getIt) async {
  final Dio dio = DioFactory.getDio();
  //api
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  return getIt;
}
