import 'package:covert_dashbord/constant.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class ShowData extends StatelessWidget {
  const ShowData({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Container(
        height: 64,
        width: 500,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: AppColors.border,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.style18W400(context),
              ),
              Text(
                value,
                style: AppTextStyles.style18W400(context).copyWith(
                  color: AppColors.grey2
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowData2 extends StatelessWidget {
  const ShowData2({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(
         16,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Center(
        child: Column(

          children: [
            Row(
              children: [
                Text(
                  title,
                  style: AppTextStyles.style18W400(context),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              value,
              textAlign: TextAlign.center,
              style: AppTextStyles.style18W400(context).copyWith(
                  color: AppColors.grey2
              ),
            ),
          ],
        ),
      ),
    );
  }
}
