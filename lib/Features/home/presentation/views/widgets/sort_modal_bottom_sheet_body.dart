import 'package:flutter/material.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/utils/styles.dart';

class SortModalBottomSheetBody extends StatelessWidget {
  const SortModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sortOptionWidget(text: kOurRecommendations),
          sortOptionWidget(text: kRatingRecommended),
          sortOptionWidget(text: kPriceRecommended),
          sortOptionWidget(text: kDistanceRecommended),
          sortOptionWidget(text: kRatingOnly),
          sortOptionWidget(text: kPriceOnly),
          sortOptionWidget(text: kDistanceOnly),
        ],
      ),
    );
  }

  Widget sortOptionWidget({required String text, void Function()? onPressed}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
            onTap: onPressed,
            child: Text(
                  text,
                  style: Styles.textStyle18,
                )
          ),
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
