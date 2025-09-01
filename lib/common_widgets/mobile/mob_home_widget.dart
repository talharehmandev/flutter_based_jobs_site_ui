import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:sizer/sizer.dart';

import '../../utils/assets.dart';
import '../../utils/constants.dart';
import '../../utils/custom_textStyle.dart';
import '../../utils/normal_text_style.dart';
import '../../utils/routes/routes_names.dart';

class MobHomeWidget extends StatelessWidget {
  const MobHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  ImageAssets.siteLogo,
                  height: 7.h,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Home",style: NormalTextStyle.customStyle(fontSize: 16.sp),),
                  )),
              SizedBox(width: 7,),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: PopupMenuButton<String>(
                  onSelected: (value) {
                    // Handle navigation based on the selected value
                    switch (value) {
                      case 'Option 1':
                        Navigator.pushNamed(context, RoutesName.AboutUs_View);
                        break;
                      case 'Option 2':
                        Navigator.pushNamed(context, RoutesName.ContactUs_View);
                        break;
                      case 'Option 3':
                        Navigator.pushNamed(context, RoutesName.HowItWorkView);
                        break;
                      case 'Option 4':
                        Navigator.pushNamed(context, RoutesName.TermsPoliciesview);
                        break;
                      default:
                        print('Unknown option selected');
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'Option 1',
                      child: Text('About Us'),
                    ),
                    PopupMenuItem(
                      value: 'Option 2',
                      child: Text('Contact Us'),
                    ),
                    PopupMenuItem(
                      value: 'Option 3',
                      child: Text('How It Works'),
                    ),
                    PopupMenuItem(
                      value: 'Option 4',
                      child: Text('Terms and Policies'),
                    ),
                  ],
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      //  color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'More',
                          style: TextStyle(color: Colors.white,fontSize: 16.sp),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.Login_View);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColor, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(6),
                    // color: kPrimaryColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Login/Register",
                        style:
                        NormalTextStyle.customStyle(fontWeight: FontWeight.bold,fontSize: 14.sp)),
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "The Easiest Way to Get Your New Job",
            style: CustomTextStyle.customStyle(
                fontSize: 16.sp, letterSpacing: 2, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Find Jobs, Employment & Career Opportunities",
            style: NormalTextStyle.customStyle(fontSize: 14.sp,),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 7.h,
            width: 95.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: Offset(0, 4), // Shadow position
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search job...",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        // No default border
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.SidebarXSetting);
                        },
                        child: Text(
                          "Find Job",
                          style: NormalTextStyle.customStyle(
                              fontWeight: FontWeight.bold,fontSize: 16.sp),
                        ))),
                SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // InkWell(
              //   onTap: () {},
              //   child: Column(
              //     children: [
              //       HoverContainer(
              //         hoverDecoration: BoxDecoration(
              //             shape: BoxShape.circle, color: kPrimaryColor),
              //         child: Padding(
              //           padding: const EdgeInsets.all(12.0),
              //           child: FaIcon(FontAwesomeIcons.hospitalUser,
              //               size: 3.h, color: kiconColor),
              //         ),
              //       ),
              //       Text(
              //         "Health",
              //         style: NormalTextStyle.customStyle(
              //             fontSize: 16.sp, fontWeight: FontWeight.bold),
              //       ),
              //       Text.rich(
              //         TextSpan(
              //           children: [
              //             TextSpan(
              //               text: "8",
              //               style: NormalTextStyle.customStyle(
              //                 fontSize: 14.sp,
              //                 fontWeight: FontWeight.bold, // Make "4" bold
              //               ),
              //             ),
              //             TextSpan(
              //               text: " Jobs available",
              //               style: NormalTextStyle.customStyle(
              //                 fontSize: 14.sp,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    HoverContainer(
                      hoverDecoration: BoxDecoration(
                          shape: BoxShape.circle, color: kPrimaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FaIcon(FontAwesomeIcons.code,
                            size: 3.h, color: kiconColor),
                      ),
                    ),
                    Text(
                      "Technology & IT",
                      style: NormalTextStyle.customStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "8",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold, // Make "4" bold
                            ),
                          ),
                          TextSpan(
                            text: " Jobs available",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
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
                          shape: BoxShape.circle, color: kPrimaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FaIcon(FontAwesomeIcons.bookOpen,
                            size: 3.h, color: kiconColor),
                      ),
                    ),
                    Text(
                      "Education",
                      style: NormalTextStyle.customStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "84",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold, // Make "4" bold
                            ),
                          ),
                          TextSpan(
                            text: " Jobs available",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
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
                          shape: BoxShape.circle, color: kPrimaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FaIcon(FontAwesomeIcons.salesforce,
                            size: 3.h, color: kiconColor),
                      ),
                    ),
                    Text(
                      "Marketing and Sales",
                      style: NormalTextStyle.customStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "43",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold, // Make "4" bold
                            ),
                          ),
                          TextSpan(
                            text: " Jobs available",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
