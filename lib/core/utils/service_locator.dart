import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_app/Features/home/data/repos/hotel_repo_impl.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HotelRepoImpl>(HotelRepoImpl(
    apiService: getIt.get<ApiService>(),
  ));
}
