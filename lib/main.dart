import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mvvm_bookly/Features/favorites/data/model/favorites_model.dart';
import 'package:mvvm_bookly/Features/favorites/manager/favorites_cubit/favorites_cubit.dart';
import 'package:mvvm_bookly/Features/home/data/home_repo/home_repo_impl.dart';
import 'package:mvvm_bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:mvvm_bookly/Features/search/data/search_repo_impl.dart';
import 'package:mvvm_bookly/core/utils/AppColors.dart';
import 'package:mvvm_bookly/core/utils/bloc_observar.dart';
import 'package:mvvm_bookly/core/utils/hive_services.dart';
import 'package:mvvm_bookly/core/utils/service_locator.dart';
import 'package:mvvm_bookly/generated/l10n.dart';
import 'package:path_provider/path_provider.dart';
import '/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'core/utils/api_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  Bloc.observer = SimpleBlocObserver();
  final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(document.path);
  Hive.registerAdapter(FavoritesBookModelAdapter());
  await Hive.openBox<FavoritesBookModel>(HiveServices.favBooks);
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => FeatureBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..getFeatureBooks(),
              ),
              BlocProvider(
                create: (context) => NewestBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..getNewestBooks(),
              ),
              BlocProvider(
                create: (context) => SearchCubit(
                  SearchRepoImpl(ApiService(Dio())),
                ),
              ),
              BlocProvider(
                create: (context) => FavoritesCubit()..getFavorites() ,
              ),
            ],
            child: MaterialApp.router(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: const Locale('en'),
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light().copyWith(
                scaffoldBackgroundColor: AppColors.backLight,
                textTheme: GoogleFonts.hankenGroteskTextTheme(
                    ThemeData.light().textTheme),
              ),
            ),
          );
        });
  }
}
