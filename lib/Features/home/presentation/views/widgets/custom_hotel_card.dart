import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/text_with_background.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/utils/styles.dart';

class CustomHotelCard extends StatelessWidget {
  const CustomHotelCard({super.key, required this.imageUrl, required this.name, required this.starts, required this.price, required this.currency, required this.reviewScore, required this.review, required this.address});

  final String name;
  final int starts;
  final int price;
  final String currency;
  final dynamic reviewScore;
  final String review;
  final String address;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      clipBehavior: Clip.antiAlias,
      shadowColor: kBlack,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 180,
                imageUrl: imageUrl,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBlack.withOpacity(0.3),
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.favorite_border,
                  color: kWhite,
                  size: 35,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  children: [
                    for (var i = 0; i < starts; i++)
                    const Icon(
                      Icons.star,
                      color: kGrey,
                    ),
                    const Text(
                      kHotel,
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  name,
                  style: Styles.textStyle23,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextWithBackground(
                      color: kGreen,
                      padding: 4,
                      text: Text(
                        reviewScore.toString(),
                        style: Styles.textStyle16.copyWith(
                            color: kWhite, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     Text(review),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.location_on,
                      size: 17,
                    ),
                     Text(address),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: kBlack),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextWithBackground(
                        color: kLowPricBg,
                        text: Text(
                          'Our lowest price',
                          style: Styles.textStyle18,
                        )),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "\$",
                              style: Styles.textStyle18
                                  .copyWith(color: kLightGreen),
                            ),
                            Text(
                              price.toString(),
                              style: Styles.textStyle30
                                  .copyWith(color: kLightGreen),
                            ),
                          ],
                        ),
                        const Text(
                          'Renaissance',
                        ),
                      ],
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'View Deal',
                      style: Styles.textStyle20,
                    ),
                    Icon(
                      Icons.navigate_next_outlined,
                      size: 35,
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text(
                  'More prices',
                  style: Styles.textStyle20.copyWith(
                      decoration: TextDecoration.underline,
                      color: kGrey,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
