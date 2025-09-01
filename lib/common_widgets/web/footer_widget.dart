import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import '../../services/domain_name.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "© 2025 ${Constants.siteName}. All Rights Reserved.",
              style: NormalTextStyle.customStyle(
                color: kTextWhiteColor,
                fontSize: 13.sp,
              ),
            ),
            Row(
              spacing: 10,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 18.sp,
                  color: kiconColor,
                ),
                FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 18.sp,
                  color: kiconColor,
                ),
                FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 18.sp,
                  color: kiconColor,
                ),
                FaIcon(
                  FontAwesomeIcons.xTwitter,
                  size: 18.sp,
                  color: kiconColor,
                ),
                FaIcon(
                  FontAwesomeIcons.pinterest,
                  size: 18.sp,
                  color: kiconColor,

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
