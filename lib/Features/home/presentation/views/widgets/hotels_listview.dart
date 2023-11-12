import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hotel_app/Features/home/presentation/manger/hotels_cubit/cubit/all_hotels_cubit.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/custom_hotel_card.dart';
import 'package:hotel_app/core/widgets/custom_error_widget.dart';
import 'package:hotel_app/core/widgets/custom_loading_indicator.dart';

class HotelsListView extends StatelessWidget {
  const HotelsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllHotelsCubit, AllHotelsState>(
      builder: (context, state) {
        if (state is AllHotelsSuccess) {
          return AnimationLimiter(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: state.hotels.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: const Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInCubic,
                      verticalOffset: 500,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: CustomHotelCard(
                            name: state.hotels[index].name,
                            price: state.hotels[index].price,
                            imageUrl: state.hotels[index].image,
                            reviewScore: state.hotels[index].reviewScore,
                            address: state.hotels[index].address,
                            currency: state.hotels[index].currency,
                            review: state.hotels[index].review,
                            starts: state.hotels[index].starts,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          );
        } else if (state is AllHotelsFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
