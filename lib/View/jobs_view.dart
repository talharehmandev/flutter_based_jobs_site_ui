import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_job_site/common_widgets/web/footer_widget.dart';
import 'package:my_job_site/utils/normal_text_style.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:sizer/sizer.dart';
import '../services/domain_name.dart';
import '../utils/constants.dart';
import 'edit_profile_view.dart';



class JobsView extends StatelessWidget {
  const JobsView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return Column(
              children: [
                Text("Find your dream job at ${Constants.siteName}",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,color: kSecondaryColor),),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 10),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        print("Talha");
                      },
                      child: Container(
                       // height: 300,
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: kPrimaryColor, // Border color
                            width: 2.0,         // Border width
                          ),
                          color: Colors.white.withOpacity(0.9),
                          boxShadow: const [BoxShadow()],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            spacing: 5,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 5,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    spacing: 5,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kSecondaryColor,
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('${index+1}',style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                                          ),
                                        ),
                                      ),
                                      Text("Flutter Developer",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: kTextblackColor),)

                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {

                                    },
                                    child: Container(

                                      decoration: BoxDecoration(
                                          color: kSecondaryColor,
                                          borderRadius: BorderRadius.circular(6)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text("Apply Now",style: NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                                      ),
                                    ),
                                  )
                                  ],
                              ),
                              Row(
                                spacing: 5,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.locationDot,
                                    size: 15.sp,
                                    color: Colors.red,
                                  ),
                                  Text("Lahore",style: NormalTextStyle.customStyle(color: kTextblackColor,fontSize: 15.sp,fontWeight: FontWeight.bold),)

                                ],
                              ),
                              Row(
                                spacing: 5,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.currency_exchange,
                                    size: 15.sp,
                                    color: Colors.green,
                                  ),
                                  Text("30,000",style: NormalTextStyle.customStyle(color: kTextblackColor,fontSize: 15.sp,fontWeight: FontWeight.w200),)

                                ],
                              ),
                              Container(

                                  height: 150,
                                  child: Text('''A Flutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs anFlutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs and third-party tools, they ensure seamless app functionalityA Flutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs anFlutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs and third-party tools, they ensure seamless app functionalityA Flutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs anFlutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs and third-party tools, they ensure seamless app functionalityA Flutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs anFlutter Developer specializes in building high-performance, cross-platform mobile, web, and desktop applications using the Flutter framework. They excel in Dart programming and focus on creating responsive, visually appealing UI designs. With expertise in integrating APIs and third-party tools, they ensure seamless app functionality.''',style: NormalTextStyle.customStyle(fontSize: 15.sp,color: kTextblackColor.withOpacity(0.8)),
                                    maxLines: 8, // Limit the number of lines displayed
                                    overflow: TextOverflow.ellipsis, // Add "..." if the text overflows
                                  )),

                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: 10, // Number of items in the list
                  ),

                ),
                FooterWidget()
              ],
            );
          case 1:
            return EditProfileView(controller: controller); // Fix
          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}




///
String getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Edit Profile';
    case 2:
      return 'Logout';
    default:
      return 'Not found page';
  }
}
