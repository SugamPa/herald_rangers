import 'package:eclipse_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttontext, required this.ontap});
  final String buttontext;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Container(
        width: 223,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.secondary,
        ),
        child: Center(
          child: Text(
            buttontext,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
