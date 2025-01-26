import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_bookly/Features/home/data/home_repo/home_repo_impl.dart';
import 'package:mvvm_bookly/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setup() {
 
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiService(
        Dio(),
      ),
    ),
  );
}
