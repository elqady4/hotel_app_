import 'package:flutter/material.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/text_with_background.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/utils/assets.dart';
import 'package:hotel_app/core/utils/styles.dart';

class MapButton extends StatelessWidget {
  const MapButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(width: 10, color: kWhite),
          borderRadius: BorderRadius.circular(5)),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Stack(
          children: [
            Image.asset(AssetsData.mapImage),
            Align(
              alignment: Alignment.center,
              child: TextWithBackground(
                  color: kDarkBlue,
                  text: Text(kMap,
                      style: Styles.textStyle18.copyWith(color: kWhite,decoration: TextDecoration.underline,))),
            ),
          ],
        ),
      ),
    );
  }
}
