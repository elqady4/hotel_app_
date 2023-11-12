import 'package:flutter/material.dart';
import 'package:hotel_app/constants.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: .8,
              child: Icon(
                Icons.search,
                size: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kGrey,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
