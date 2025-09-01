import 'package:flutter/material.dart';
import 'package:my_job_site/utils/custom_textStyle.dart';
import 'package:sizer/sizer.dart';
import '../../utils/assets.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      height: 10.h,
      width: 100.w,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title, // Use the provided title
              style: CustomTextStyle.customStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: kiconColor, size: 5.h),
            ),
          ],
        ),
      ),
    );
  }
}
