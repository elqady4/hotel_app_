import 'package:flutter/material.dart';
import 'package:hotel_app/core/utils/styles.dart';

void showCustomTypeModalBottomSheet(
    {required BuildContext context,
    required Widget centerWidget,
     Widget? leftWidget,
    required String title,Widget? bottomWidget}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled:true,
    useSafeArea: true,
    builder: (context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      leftWidget ?? const SizedBox(),
                      Text(
                        title,
                        style: Styles.textStyle23,
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close))
                    ],
                  ),
                ),
              ),
              centerWidget,
            ],
          ),
        ),
        bottomNavigationBar:bottomWidget ,
      );
    },
  );
}
