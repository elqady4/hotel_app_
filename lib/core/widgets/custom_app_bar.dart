import 'package:flutter/material.dart';
import 'package:hotel_app/core/utils/styles.dart';

import '../utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                // GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: const Icon(
                Icons.menu,
                size: 22,
              )),
          Text(
            title,
            style: Styles.textStyle18,
          ),
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
        ],
      ),
    );
  }
}
