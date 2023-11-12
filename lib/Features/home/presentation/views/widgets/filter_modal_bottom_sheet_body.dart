import 'package:flutter/material.dart';
import 'package:hotel_app/Features/home/presentation/manger/change_price_provider/price_filter_provider.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/text_with_background.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/utils/assets.dart';
import 'package:hotel_app/core/utils/styles.dart';
import 'package:provider/provider.dart';

class FilterModalBottomSheetBody extends StatelessWidget {
  const FilterModalBottomSheetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filterProvider = Provider.of<PriceFilterProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          buildPriceSliderComponet(filterProvider),
          const SizedBox(
            height: 40,
          ),
          buildRatingComponent(),
          const SizedBox(
            height: 40,
          ),
          buildHotelClass(),
          const SizedBox(
            height: 40,
          ),
          buildDistanceFrom(),
        ],
      ),
    );
  }

  Column buildPriceSliderComponet(PriceFilterProvider filterProvider) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              kPricePerNight,
              style: Styles.textStyle18.copyWith(
                letterSpacing: 2,
              ),
            ),
            const SizedBox(width: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child:
                  Text('${filterProvider.currentValue.toStringAsFixed(2)}+ \$',style: Styles.textStyle18),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Slider(
          value: filterProvider.currentValue,
          min: filterProvider.minValue,
          max: filterProvider.maxValue,
          onChanged: (value) {
            filterProvider.updateSliderValue(value);
          },
          thumbColor: kWhite,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ ${filterProvider.minValue.toStringAsFixed(2)}'),
              Text('\$ ${filterProvider.maxValue.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildRatingComponent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        kRating,
        style: Styles.textStyle18.copyWith(
          letterSpacing: 2,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWithBackground(
            color: kRed,
            text: Text(
              k0,
              style: Styles.textStyle18.copyWith(color: kWhite),
            ),
          ),
          TextWithBackground(
            color: kAmber,
            text: Text(
              k7,
              style: Styles.textStyle18.copyWith(color: kWhite),
            ),
          ),
          TextWithBackground(
            color: kLightGreen,
            text: Text(
              k7Half,
              style: Styles.textStyle18.copyWith(color: kWhite),
            ),
          ),
          TextWithBackground(
            color: kGreen,
            text: Text(
              k8,
              style: Styles.textStyle18.copyWith(color: kWhite),
            ),
          ),
          TextWithBackground(
            color: kDarkGreen,
            text: Text(
              k8Half,
              style: Styles.textStyle18.copyWith(color: kWhite),
            ),
          ),
        ],
      )
    ],
  );
}

Widget buildHotelClass() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        kHotelClass,
        style: Styles.textStyle18.copyWith(
          letterSpacing: 2,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              AssetsData.oneStar,
              width: kIconSize,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              AssetsData.twoStar,
              width: kIconSize,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              AssetsData.threeStar,
              width: kIconSize,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              AssetsData.fourStar,
              width: kIconSize,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              AssetsData.fiveStar,
              width: kIconSize,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildDistanceFrom() {
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kDistanceFrom,
          style: Styles.textStyle18.copyWith(
            letterSpacing: 2,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         const Divider(
              thickness: 2,
            ),
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        kLocation,
                        style: Styles.textStyle18,
                      ),
                      Row(
                        children: [
                          Text(
                            kCityCenter,
                            style: Styles.textStyle18.copyWith(color: kGrey),
                          ),
                          const Icon(Icons.navigate_next, color: kGrey)
                        ],
                      ),
                    ],
                  )),
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ],
    ),
  );
}
