import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import '../../common_widgets/mobile/mob_stats_widget.dart';
import '../../common_widgets/web/footer_widget.dart';
import '../../common_widgets/web/header_widget.dart';
import '../../common_widgets/web/stats_widget.dart';
import '../../services/domain_name.dart';
import '../../utils/assets.dart';
import '../../utils/constants.dart';
import '../../utils/normal_text_style.dart';
import '../../utils/responsive_layout_widget.dart';
import '../../utils/routes/routes_names.dart';

class RegisterUserview extends StatefulWidget {
  const RegisterUserview({super.key});

  @override
  State<RegisterUserview> createState() => _RegisterUserviewState();
}

class _RegisterUserviewState extends State<RegisterUserview> {


  final _emailController = TextEditingController();
  final _nameController =  TextEditingController();
  final _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
 // final _joiningdateController = TextEditingController();
  bool _isConfirmObscured = true;
  String? _matchMessage;
  bool _isObscured = true;
  Uint8List? _imageBytes;

  Future<void> pickImage() async {
    // Create an instance of ImagePicker
    final ImagePicker picker = ImagePicker();

    // Pick an image from the gallery
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Read the file as bytes (for display in the app)
      final Uint8List imageBytes = await pickedFile.readAsBytes();
      setState(() {
        _imageBytes = imageBytes;
      });
    } else {
      print('No image selected.');
    }
  }


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
          spacing: 7,
          children: [
            HeaderWidget(title: "Create Account"),
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
                        "Create account to get your dream job",
                        style: NormalTextStyle.customStyle(
                          color: kTextWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      Stack(
                        children: [
                          // Circle Avatar
                          CircleAvatar(
                            radius: 50, // Adjust the radius as needed
                            backgroundImage: _imageBytes != null
                                ? MemoryImage(_imageBytes!)
                                : AssetImage(ImageAssets.userProfile) as ImageProvider,
                            backgroundColor: Colors.grey[200], // Fallback background color
                          ),
                          // Camera Icon Overlay
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: pickImage,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kSecondaryColor,
                                ),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                            labelText: "Your Name",
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: _isConfirmObscured,
                          onChanged: (value) {
                            setState(() {
                              if (value.isEmpty) {
                                _matchMessage = "Please confirm your password";
                              } else if (value == _passwordController.text) {
                                _matchMessage = "Passwords match";
                              } else {
                                _matchMessage = "Passwords do not match";
                              }
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Confirm your password",
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: kSecondaryColor,
                                width: 2,
                              ),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isConfirmObscured
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isConfirmObscured = !_isConfirmObscured;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      if (_matchMessage != null)
                        Text(
                          _matchMessage!,
                          style: TextStyle(
                            color: _matchMessage == "Passwords match"
                                ? Colors.green
                                : Colors.red,
                            fontSize: 12.sp,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          controller: _dateController,
                          readOnly: true, // Prevents manual input
                          decoration: InputDecoration(
                            labelText: 'Date of Birth',
                            hintText: 'Select your date of birth',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: kSecondaryColor,
                                width: 2, // Active border color
                              ),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: Icon(Icons.calendar_today),
                          ),
                          onTap: () async {
                            DateTime? selectedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
      
                            if (selectedDate != null) {
                              setState(() {
                                _dateController.text =
                                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                              });
                            }
                          },
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              kSecondaryColor), // Active button color
                        ),
                        onPressed: () {
      
                        },
                        child: Text(
                          "Sign Up",
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
                            "Already have an account?",
                            style: NormalTextStyle.customStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesName.Login_View);
                            },
                            child: Text(
                              "Login",
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
            FooterWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 7,
        children: [
          HeaderWidget(title: "Create Account"),
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
                      "Create account to get your dream job",
                      style: NormalTextStyle.customStyle(
                        color: kTextWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Stack(
                      children: [
                        // Circle Avatar
                        CircleAvatar(
                          radius: 50, // Adjust the radius as needed
                          backgroundImage: _imageBytes != null
                              ? MemoryImage(_imageBytes!)
                              : AssetImage(ImageAssets.userProfile) as ImageProvider,
                          backgroundColor: Colors.grey[200], // Fallback background color
                        ),
                        // Camera Icon Overlay
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: pickImage,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kSecondaryColor,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: "Enter your name",
                          labelText: "Your Name",
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
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: _isConfirmObscured,
                        onChanged: (value) {
                          setState(() {
                            if (value.isEmpty) {
                              _matchMessage = "Please confirm your password";
                            } else if (value == _passwordController.text) {
                              _matchMessage = "Passwords match";
                            } else {
                              _matchMessage = "Passwords do not match";
                            }
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Confirm your password",
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isConfirmObscured
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isConfirmObscured = !_isConfirmObscured;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    if (_matchMessage != null)
                      Text(
                        _matchMessage!,
                        style: TextStyle(
                          color: _matchMessage == "Passwords match"
                              ? Colors.green
                              : Colors.red,
                          fontSize: 12.sp,
                        ),
                      ),
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        controller: _dateController,
                        readOnly: true, // Prevents manual input
                        decoration: InputDecoration(
                          labelText: 'Date of Birth',
                          hintText: 'Select your date of birth',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kSecondaryColor,
                              width: 2, // Active border color
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                        onTap: () async {
                          DateTime? selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );

                          if (selectedDate != null) {
                            setState(() {
                              _dateController.text =
                              "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                            });
                          }
                        },
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            kSecondaryColor), // Active button color
                      ),
                      onPressed: () {

                      },
                      child: Text(
                        "Sign Up",
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
                          "Already have an account?",
                          style: NormalTextStyle.customStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.Login_View);
                          },
                          child: Text(
                            "Login",
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



//name email password dob profile pic joining date
