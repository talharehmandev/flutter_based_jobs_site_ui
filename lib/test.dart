// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:my_job_site/View/Login_view.dart';
// import 'package:my_job_site/utils/constants.dart';
// import 'package:sidebar_with_animation/animated_side_bar.dart';
// import 'package:sizer/sizer.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(builder: (context, orientation, screenType){
//       return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const MyHomePage(),
//       );
//
//     }
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//
//   final List<Widget> _pages = [
//           login_view(),
//     const Center(child: Text('Insights Page')),
//     const Center(child: Text('Feature Page')),
//     const Center(child: Text('Payouts Page')),
//     const Center(child: Text('Settings Page')),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Row(
//         children: [
//           SideBarAnimated(
//             onTap: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             widthSwitch: 700,
//             mainLogoImage: 'assets/userprofile.png',
//             sidebarItems: [
//               SideBarItem(
//                 iconSelected: Icons.home_rounded,
//                 iconUnselected: Icons.home_outlined,
//                 text: 'Home',
//               ),
//               SideBarItem(
//                 iconSelected: Icons.account_balance_wallet,
//                 iconUnselected: Icons.account_balance_wallet_outlined,
//                 text: 'Insights',
//               ),
//               SideBarItem(
//                 iconSelected: CupertinoIcons.chart_bar_square_fill,
//                 iconUnselected: CupertinoIcons.chart_bar_square,
//                 text: 'Feature',
//               ),
//               SideBarItem(
//                 iconSelected: Icons.credit_card_rounded,
//                 text: 'Payouts',
//               ),
//               SideBarItem(
//                 iconSelected: Icons.settings,
//                 iconUnselected: Icons.settings_outlined,
//                 text: 'Settings',
//               ),
//             ],
//           ),
//           Expanded(
//             child: Container(
//               alignment: Alignment.topLeft,
//               margin: const EdgeInsets.only(bottom: 20),
//               child: _pages[_selectedIndex], // Display the selected page
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ImageBackgroundWithOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Background with Overlay'),
      ),
      body: Center(
        child: Container(
          width: 300, // Set desired width
          height: 200, // Set desired height
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'), // Path to your image
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12), // Optional rounded corners
          ),
          child: Stack(
            children: [
              // Black overlay with opacity
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // Adjust opacity here
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              // Centered text
              Center(
                child: Text(
                  'Your Text Here',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 24, // Font size
                    fontWeight: FontWeight.bold, // Font weight
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black45, // Shadow color
                        offset: Offset(2, 2), // Shadow position
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ImageBackgroundWithOverlay(),
  ));
}
