import 'package:flutter/material.dart';
import 'package:hotel_app/constants.dart';
import 'package:hotel_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.buttonText});

  final void Function()? onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: kButtonBg,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(buttonText,
                  style: Styles.textStyle18.copyWith(color: kWhite)),
            )),
      ),
    );
  }
}
