import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:my_job_site/common_widgets/mobile/mob_home_widget.dart';
import 'package:my_job_site/common_widgets/web/footer_widget.dart';
import 'package:my_job_site/common_widgets/web/home_widgets.dart';
import 'package:my_job_site/common_widgets/web/how_it_works.dart';
import 'package:my_job_site/common_widgets/web/join_us.dart';
import 'package:my_job_site/common_widgets/web/stats_widget.dart';
import 'package:my_job_site/services/domain_name.dart';
import 'package:my_job_site/utils/responsive_layout_widget.dart';
import 'package:my_job_site/utils/assets.dart';
import 'package:my_job_site/utils/constants.dart';
import 'package:my_job_site/utils/routes/routes_names.dart';
import 'package:sizer/sizer.dart';
import '../common_widgets/mobile/how_works_mob.dart';
import '../common_widgets/mobile/joinUs_Mob.dart';
import '../common_widgets/mobile/mob_stats_widget.dart';
import '../utils/normal_text_style.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Center(
              child: Container(
                width: 100.w, // Set desired width
                height: 45.h, // Set desired height
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage( ImageAssets.backgroundImage,), // Path to your image
                    fit: BoxFit.cover,
                  ),
                  //borderRadius: BorderRadius.circular(12), // Optional rounded corners
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5), // Adjust opacity here
                       // borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    MobHomeWidget(),
              
              
                  ],
                ),
              ),
            ),
            JoinUsWidget_Mob(),
            HowItWorksWidget_Mob(),
            Container(
              color: kSecondaryColor,
              //height: 33.h,
              width: 100.w,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("${Constants.siteName} Site Stats",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    MobStatsWidget(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: kwhiteContainer,
                      ),
                    ),
                   // Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ready to get started?",style: NormalTextStyle.customStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                            Text("Create your account and find your dream job.",style: NormalTextStyle.customStyle(fontSize: 13.sp),)
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.RegisterUserview);
                          },
                          child: Container(
                            decoration: BoxDecoration(color: kwhiteContainer,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Sign Up",style: NormalTextStyle.customStyle(color: kSecondaryColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                                  Icon(Icons.arrow_forward,color: kSecondaryColor,size:2.h,)
                                ],
                              )),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              //height: 180,
              color: kwhiteContainer,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Companies",
                    style: NormalTextStyle.customStyle(
                        fontWeight: FontWeight.bold,
                        color: kTextblackColor,
                        fontSize: 17.sp),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Tilt(child: Image.asset("assets/b1.png",width: 10.w,
                        height: 5.h,)),
                      Tilt(child: Image.asset("assets/b2.png",width: 10.w,
                        height: 5.h,)),
                      Tilt(child: Image.asset("assets/b3.png",width: 10.w,
                        height: 5.h,)),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Tilt(child: Image.asset("assets/b4.png",width: 10.w,
                        height: 5.h,)),
                      Tilt(child: Image.asset("assets/b5.png",width: 10.w,
                        height: 5.h,)),
                      Tilt(child: Image.asset("assets/b6.png",width: 10.w,
                        height: 5.h,)),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 // Spacer(),
                  FooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAssets.backgroundImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          color: Colors.black.withOpacity(0.6),
          width: double.infinity,
          height: double.infinity,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              HomeWidget(),
              SizedBox(
                height: 50,
              ),
              JoinUsWidget(),
              HowItWorksWidget(),
              Container(
                color: kSecondaryColor,
                height: 50.h,
                width: 100.w,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                  children: [
                      Text("${Constants.siteName} Site Stats",style: NormalTextStyle.customStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                    StatsWidget(),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: kwhiteContainer,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ready to get started?",style: NormalTextStyle.customStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
                            Text("Create your account and find your dream job.",style: NormalTextStyle.customStyle(fontSize: 13.sp),)
                          ],
                        ),
                         InkWell(
                           onTap: () {
                             Navigator.pushNamed(context, RoutesName.RegisterUserview);
                           },
                           child: Container(
                             decoration: BoxDecoration(color: kwhiteContainer,
                             borderRadius: BorderRadius.circular(5),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Center(child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   Text("Sign Up",style: NormalTextStyle.customStyle(color: kSecondaryColor,fontWeight: FontWeight.bold),),
                                   Icon(Icons.arrow_forward,color: kSecondaryColor,size:4.h,)
                                 ],
                               )),
                             ),
                           ),
                         )
                      ],
                    )
                  ],
                  ),
                ),
              ),
              Container(
                height: 180,
                color: kwhiteContainer,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Companies",
                      style: NormalTextStyle.customStyle(
                          fontWeight: FontWeight.bold,
                          color: kTextblackColor,
                          fontSize: 17.sp),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Tilt(child: Image.asset("assets/b1.png",width: 10.w,
                        height: 5.h,)),
                        Tilt(child: Image.asset("assets/b2.png",width: 10.w,
                          height: 5.h,)),
                        Tilt(child: Image.asset("assets/b3.png",width: 10.w,
                          height: 5.h,)),
                        Tilt(child: Image.asset("assets/b4.png",width: 10.w,
                          height: 5.h,)),
                        Tilt(child: Image.asset("assets/b5.png",width: 10.w,
                          height: 5.h,)),
                        Tilt(child: Image.asset("assets/b6.png",width: 10.w,
                          height: 5.h,)),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Spacer(),
                    FooterWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


}
