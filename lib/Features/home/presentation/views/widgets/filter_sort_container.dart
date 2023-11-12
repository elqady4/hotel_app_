import 'package:flutter/material.dart';
import 'package:hotel_app/Features/home/presentation/manger/change_price_provider/price_filter_provider.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/filter_modal_bottom_sheet_body.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/sort_modal_bottom_sheet_body.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/function/custom_modal_bottom_sheet.dart';
import 'package:hotel_app/core/utils/styles.dart';
import 'package:hotel_app/core/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class FilterSortContainer extends StatelessWidget {
  const FilterSortContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shadowColor: kBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  showCustomTypeModalBottomSheet(
                    context: context,
                    centerWidget: ChangeNotifierProvider(
                        create: (context) => PriceFilterProvider(),
                        child: const FilterModalBottomSheetBody()),
                    title: kFilters,
                    bottomWidget: CustomButton(
                      buttonText: kShowResults,
                      onPressed: () {},
                    ),
                    leftWidget: Text(
                      kReset,
                      style: Styles.textStyle20.copyWith(color: kGrey,decoration: TextDecoration.underline,),
                    )
                  );
                },
                child: Row(
                  children: [
                    const Icon(Icons.filter_alt, color: kDarkBlue),
                    Text(
                      kFilters,
                      style: Styles.textStyle18.copyWith(color: kDarkBlue),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showCustomTypeModalBottomSheet(
                      context: context,
                      centerWidget: const SortModalBottomSheetBody(),
                      title: kSort);
                },
                child: Row(
                  children: [
                    const Icon(Icons.sort, color: kDarkBlue),
                    Text(
                      kSort,
                      style: Styles.textStyle18.copyWith(color: kDarkBlue),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
