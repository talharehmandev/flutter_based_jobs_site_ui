import 'package:flutter/material.dart';
import 'package:my_job_site/utils/routes/routes_names.dart';
import 'package:sizer/sizer.dart';
import '../common_widgets/Sidebar_main_setting.dart';
import '../common_widgets/mobile/mob_stats_widget.dart';
import '../common_widgets/web/footer_widget.dart';
import '../common_widgets/web/header_widget.dart';
import '../common_widgets/web/stats_widget.dart';
import '../services/domain_name.dart';
import '../test.dart';
import '../utils/assets.dart';
import '../utils/constants.dart';
import '../utils/normal_text_style.dart';
import '../utils/responsive_layout_widget.dart';

class login_view extends StatefulWidget {
  login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscured = true;

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
      child: Column(
        spacing: 7,
        children: [
          HeaderWidget(title: "Login to Continue"),
          Image.asset(
            ImageAssets.siteLogo,
            height: 12.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                width: 100.w,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  spacing: 20,
                  children: [
                    Text(
                      "Login to get your dream job",
                      style: NormalTextStyle.customStyle(
                        color: kTextWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Enter your email address",
                          labelText: "Email Address",
                          labelStyle: TextStyle(color: kTextblackColor),
                          // Active label color
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2, // Active border color
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true, // Enable the background color
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _isObscured, // Toggles text visibility
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          labelStyle: TextStyle(color: kTextblackColor),
                          // Active label color
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2, // Active border color
                            ),
                          ),
                          fillColor: Colors.white,
                          // Background color
                          filled: true,
                          // Enable the background color
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscured
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: kTextblackColor, // Customize icon color
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscured =
                                !_isObscured; // Toggle visibility state
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            kSecondaryColor), // Active button color
                      ),
                      onPressed: () {
                        print("Email: ${_emailController.text}");
                        print("password: ${_passwordController.text}");
                        Navigator.pushNamed(context, RoutesName.SidebarXSetting);
                      },
                      child: Text(
                        "Login",
                        style:
                        NormalTextStyle.customStyle(color: kTextWhiteColor),
                      ),
                    ),
                    Row(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: NormalTextStyle.customStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // showDialog(
                            //   context: context,
                            //   builder: (BuildContext context) {
                            //     return AlertDialog(
                            //       title: Text(
                            //         "Choose Account Type",
                            //         style: NormalTextStyle.customStyle(
                            //             color: kTextblackColor,
                            //             fontWeight: FontWeight.bold,
                            //             fontSize: 16.sp),
                            //       ),
                            //       content: Text(
                            //           "Select the type of account you want to create:",
                            //           style: NormalTextStyle.customStyle(
                            //               color: kTextLightColor,
                            //               fontSize: 14.sp)),
                            //       actions: [
                            //         ElevatedButton(
                            //           style: ButtonStyle(
                            //             backgroundColor:
                            //                 MaterialStateProperty.all(
                            //                     kSecondaryColor),
                            //           ),
                            //           onPressed: () {
                            //             Navigator.pushNamed(context,
                            //                 RoutesName.RegisterCompanyView);
                            //           },
                            //           child: Text(
                            //             "Company Account",
                            //             style: NormalTextStyle.customStyle(
                            //                 color: kTextWhiteColor),
                            //           ),
                            //         ),
                            //         ElevatedButton(
                            //           style: ButtonStyle(
                            //             backgroundColor: MaterialStateProperty.all(
                            //                 kSecondaryColor), // Active button color
                            //           ),
                            //           onPressed: () {
                            //             Navigator.pushNamed(context,
                            //                 RoutesName.RegisterUserview);
                            //           },
                            //           child: Text(
                            //             "User Account",
                            //             style: NormalTextStyle.customStyle(
                            //                 color: kTextWhiteColor),
                            //           ),
                            //         ),
                            //       ],
                            //     );
                            //   },
                            // );
                            Navigator.pushNamed(context, RoutesName.RegisterUserview);
                          },
                          child: Text(
                            "Create Account",
                            style: NormalTextStyle.customStyle(
                              color: kSecondaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
              child: Text(
                "${Constants.siteName} Site Stats",
                style: NormalTextStyle.customStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: kTextblackColor),
              )),
          MobStatsWidget(),
          Spacer(),
          FooterWidget()
        ],
      ),
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 7,
        children: [
          HeaderWidget(title: "Login to Continue"),
          Image.asset(
            ImageAssets.siteLogo,
              height: 12.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                width: 100.w,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  spacing: 20,
                  children: [
                    Text(
                      "Login to get your dream job",
                      style: NormalTextStyle.customStyle(
                        color: kTextWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Enter your email address",
                          labelText: "Email Address",
                          labelStyle: TextStyle(color: kTextblackColor),
                          // Active label color
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2, // Active border color
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true, // Enable the background color
                        ),
                      ),
                    ),
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _isObscured, // Toggles text visibility
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          labelStyle: TextStyle(color: kTextblackColor),
                          // Active label color
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2, // Active border color
                            ),
                          ),
                          fillColor: Colors.white,
                          // Background color
                          filled: true,
                          // Enable the background color
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscured
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: kTextblackColor, // Customize icon color
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscured =
                                    !_isObscured; // Toggle visibility state
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            kSecondaryColor), // Active button color
                      ),
                      onPressed: () {
                        print("Email: ${_emailController.text}");
                        print("password: ${_passwordController.text}");
                        Navigator.pushNamed(context, RoutesName.SidebarXSetting);
                      },
                      child: Text(
                        "Login",
                        style:
                            NormalTextStyle.customStyle(color: kTextWhiteColor),
                      ),
                    ),
                    Row(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: NormalTextStyle.customStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // showDialog(
                            //   context: context,
                            //   builder: (BuildContext context) {
                            //     return AlertDialog(
                            //       title: Text(
                            //         "Choose Account Type",
                            //         style: NormalTextStyle.customStyle(
                            //             color: kTextblackColor,
                            //             fontWeight: FontWeight.bold,
                            //             fontSize: 16.sp),
                            //       ),
                            //       content: Text(
                            //           "Select the type of account you want to create:",
                            //           style: NormalTextStyle.customStyle(
                            //               color: kTextLightColor,
                            //               fontSize: 14.sp)),
                            //       actions: [
                            //         ElevatedButton(
                            //           style: ButtonStyle(
                            //             backgroundColor:
                            //                 MaterialStateProperty.all(
                            //                     kSecondaryColor),
                            //           ),
                            //           onPressed: () {
                            //             Navigator.pushNamed(context,
                            //                 RoutesName.RegisterCompanyView);
                            //           },
                            //           child: Text(
                            //             "Company Account",
                            //             style: NormalTextStyle.customStyle(
                            //                 color: kTextWhiteColor),
                            //           ),
                            //         ),
                            //         ElevatedButton(
                            //           style: ButtonStyle(
                            //             backgroundColor: MaterialStateProperty.all(
                            //                 kSecondaryColor), // Active button color
                            //           ),
                            //           onPressed: () {
                            //             Navigator.pushNamed(context,
                            //                 RoutesName.RegisterUserview);
                            //           },
                            //           child: Text(
                            //             "User Account",
                            //             style: NormalTextStyle.customStyle(
                            //                 color: kTextWhiteColor),
                            //           ),
                            //         ),
                            //       ],
                            //     );
                            //   },
                            // );
                            Navigator.pushNamed(context, RoutesName.RegisterUserview);
                          },
                          child: Text(
                            "Create Account",
                            style: NormalTextStyle.customStyle(
                              color: kSecondaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
              child: Text(
            "${Constants.siteName} Site Stats",
            style: NormalTextStyle.customStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: kTextblackColor),
          )),
          StatsWidget(),
          FooterWidget()
        ],
      ),
    );
  }
}
