import 'package:flutter/material.dart';
import 'package:my_job_site/common_widgets/web/footer_widget.dart';
import 'package:my_job_site/common_widgets/web/stats_widget.dart';
import 'package:my_job_site/utils/normal_text_style.dart';
import 'package:sizer/sizer.dart';

import '../common_widgets/mobile/mob_stats_widget.dart';
import '../common_widgets/web/header_widget.dart';
import '../services/domain_name.dart';
import '../utils/assets.dart';
import '../utils/constants.dart';
import '../utils/responsive_layout_widget.dart';

class HowItWorkView extends StatelessWidget {
  const HowItWorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteContainer,
      body: ResponsiveLayout(
        mobileBuilder: (context) => _buildMobileContent(context),
        desktopBuilder: (context) => _buildDesktopContent(context),
      ),
    );
  }

  Widget _buildMobileContent(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          // spacing: 7,
          children: [
            HeaderWidget(title: "How It Works"),
            Container(
              width: 100.w,
             // height: 200,
             //   color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 7,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:kSecondaryColor,
                                  shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("1",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                              ),),
                            Text("Create Account",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
                          ],
                        ),
                        Text("Create account to find your dream job.",style: NormalTextStyle.customStyle(fontSize: 13.sp,color: kTextLightColor),)
                      ],
                    ),
                    Image.asset(ImageAssets.createAccount,height: 25.h,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Container(
              width: 100.w,
              //height: 200,
              //  color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 7,
                          children: [
                            Text("Search Jobs",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
                            Container(
                              decoration: BoxDecoration(
                                  color:kSecondaryColor,
                                  shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("2",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                              ),),
                          ],
                        ),
                        Text("Browse your dream jobs.",style: NormalTextStyle.customStyle(fontSize: 13.sp,color: kTextLightColor),)
                      ],
                    ),
                    Image.asset(ImageAssets.searchjob,height: 25.h,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Container(
              width: 100.w,
              //height: 200,
              //  color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 7,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:kSecondaryColor,
                                  shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("3",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                              ),),
                            Text("Save & Apply",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
                          ],
                        ),
                        Text("Save & directly apply for your dream jobs.",style: NormalTextStyle.customStyle(fontSize: 13.sp,color: kTextLightColor),)
                      ],
                    ),
                    Image.asset(ImageAssets.applyjob,height: 25.h,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text("${Constants.siteName} Site Stats",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
            SizedBox(height: 15,),
            MobStatsWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       // spacing: 7,
        children: [
          HeaderWidget(title: "How It Works"),
          Container(
            width: 100.w,
            height: 200,
            //  color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                         spacing: 7,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color:kSecondaryColor,
                              shape: BoxShape.circle
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                            ),),
                          Text("Create Account",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
                        ],
                      ),
                      Text("Create account to find your dream job.",style: NormalTextStyle.customStyle(fontSize: 13.sp,color: kTextLightColor),)
                    ],
                  ),
                  Image.asset(ImageAssets.createAccount),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Container(
            width: 100.w,
            height: 200,
            //  color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.asset(ImageAssets.searchjob),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 7,
                        children: [
                          Text("Search Jobs",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
                          Container(
                            decoration: BoxDecoration(
                                color:kSecondaryColor,
                                shape: BoxShape.circle
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("2",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                            ),),
                        ],
                      ),
                      Text("Browse your dream jobs.",style: NormalTextStyle.customStyle(fontSize: 13.sp,color: kTextLightColor),)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Container(
            width: 100.w,
            height: 200,
            //  color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 7,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color:kSecondaryColor,
                                shape: BoxShape.circle
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("3",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                            ),),
                          Text("Save & Apply",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
                        ],
                      ),
                      Text("Save & directly apply for your dream jobs.",style: NormalTextStyle.customStyle(fontSize: 13.sp,color: kTextLightColor),)
                    ],
                  ),
                  Image.asset(ImageAssets.applyjob),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text("${Constants.siteName} Site Stats",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: kTextblackColor),),
          SizedBox(height: 15,),
          StatsWidget(),
          FooterWidget(),
        ],
      ),
    );
  }


}
