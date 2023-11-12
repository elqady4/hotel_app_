import 'package:flutter/material.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/filter_sort_container.dart';
import 'package:hotel_app/Features/home/presentation/views/widgets/hotels_listview.dart';
import 'package:hotel_app/core/widgets/custom_app_bar.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/widgets/custom_search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(title: kHome),
              CustomSearchTextField(),
              FilterSortContainer(),
            ],
          ),
        ),
        SliverFillRemaining(
          child: HotelsListView(),
        ),
      ],
    );
  }
}
