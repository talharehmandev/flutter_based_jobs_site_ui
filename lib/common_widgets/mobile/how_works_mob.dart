import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:sizer/sizer.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';

class HowItWorksWidget_Mob extends StatefulWidget {
  const HowItWorksWidget_Mob({super.key});

  @override
  State<HowItWorksWidget_Mob> createState() => _HowItWorksWidget_MobState();
}

class _HowItWorksWidget_MobState extends State<HowItWorksWidget_Mob> {
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 250,
      color: kwhiteContainer,
      child: Column(
        spacing: 10,
        children: [
          SizedBox(),
          Text(
            "How It Works?",
            style: NormalTextStyle.customStyle(
                fontWeight: FontWeight.bold,
                color: kTextblackColor,
                fontSize: 17.sp),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    HoverContainer(
                      hoverDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kSecondaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.person_outline_outlined,
                            size: 23.sp, color: kTextblackColor),
                      ),
                    ),
                    Text(
                      "Create An Account",
                      style: NormalTextStyle.customStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: kTextblackColor),
                    ),
                    Text(
                      "For post or browse jobs",
                      style: NormalTextStyle.customStyle(
                          fontSize: 14.sp, color: kTextLightColor),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    HoverContainer(
                      hoverDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.work_outline_outlined,
                            size: 23.sp, color: kTextblackColor),
                      ),
                    ),
                    Text(
                      "Search Jobs",
                      style: NormalTextStyle.customStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: kTextblackColor),
                    ),
                    Text(
                      "Find your dream jobs",
                      style: NormalTextStyle.customStyle(
                          fontSize: 14.sp, color: kTextLightColor),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    HoverContainer(
                      hoverDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kSecondaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.wine_bar_outlined,
                            size: 23.sp, color: kTextblackColor),
                      ),
                    ),
                    Text(
                      "Save And Apply",
                      style: NormalTextStyle.customStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: kTextblackColor),
                    ),
                    Text(
                      "Direct apply for jobs",
                      style: NormalTextStyle.customStyle(
                          fontSize: 14.sp, color: kTextLightColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8,)
        ],
      ),
    );
  }
}
