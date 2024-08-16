import 'package:ecom_modwir/core/constant/color.dart';
import 'package:ecom_modwir/core/constant/imgaeasset.dart';
import 'package:flutter/material.dart';

class CardDeliveryTypeChecout extends StatelessWidget {
  final String imageName;
  final String title;
  final bool isActive;
  const CardDeliveryTypeChecout(
      {super.key,
      required this.imageName,
      required this.title,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: isActive ? AppColor.secondColor : null,
        border: Border.all(color: AppColor.secondColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageName,
            width: 60,
            color: isActive ? Colors.white : null,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : AppColor.secondColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}