import 'package:flutter/material.dart';
import 'package:my_job_site/common_widgets/web/footer_widget.dart';
import 'package:my_job_site/utils/constants.dart';
import 'package:my_job_site/utils/custom_textStyle.dart';
import 'package:my_job_site/utils/normal_text_style.dart';
import 'package:sidebarx/sidebarx.dart';
import '../View/jobs_view.dart';
import '../View/side_bar.dart';
import '../services/domain_name.dart';


class SidebarXSetting extends StatelessWidget {
  SidebarXSetting({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final isSmallScreen = MediaQuery.of(context).size.width < 600;
        return Scaffold(
          backgroundColor: kwhiteContainer,
          key: _key,
          appBar: isSmallScreen
              ? AppBar(
            centerTitle: true,
            backgroundColor: canvasColor,
            title: Text(Constants.siteName,style: CustomTextStyle.customStyle(),),
            leading: IconButton(
              onPressed: () {
                _key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu,color: kiconColor,),
            ),
          )
              : null,
          drawer: Sidebarx_code(controller: _controller),
          body: Row(
            children: [
              if (!isSmallScreen)
                Sidebarx_code(controller: _controller),
              Expanded(
                child: Center(
                  child: JobsView(
                    controller: _controller,
                  ),
                ),
              ),

            ],
          ),

        );
      },
    );
  }
}


const primaryColor = Color(0xFF685BFF);
const canvasColor = kPrimaryColor;
const scaffoldBackgroundColor = primaryColor;
const accentCanvasColor = kSecondaryColor;
const white = Colors.white;
//final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
