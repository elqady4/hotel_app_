import 'package:flutter/material.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/map_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: HomeViewBody(),
      floatingActionButton:  MapButton(),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
