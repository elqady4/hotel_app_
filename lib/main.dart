import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app/Features/home/data/repos/hotel_repo_impl.dart';
import 'package:hotel_app/Features/home/presentation/manger/hotels_cubit/cubit/all_hotels_cubit.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/utils/app_router.dart';
import 'package:hotel_app/core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const Hotels());
}

class Hotels extends StatelessWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(
          create: (context) => AllHotelsCubit(
            getIt.get<HotelRepoImpl>(),
          )..fetchAllHotels(),
        ),
        
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
        ),
      ),
    );
  }
}
