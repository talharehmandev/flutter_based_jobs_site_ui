import 'package:flutter/material.dart';
import 'package:my_job_site/View/aboutus_view.dart';
import 'package:my_job_site/View/contactUs_view.dart';
import 'package:my_job_site/View/home.dart';
import 'package:my_job_site/View/jobs_view.dart';
import 'package:my_job_site/View/register_accountView/register_userView.dart';
import 'package:my_job_site/utils/routes/routes_names.dart';
import '../../View/Login_view.dart';
import '../../View/how_it_work_view.dart';
import '../../View/register_accountView/register_company_view.dart';
import '../../View/terms_policiesView.dart';
import '../../common_widgets/Sidebar_main_setting.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RoutesName.Login_View:
        return MaterialPageRoute(builder: (context) => login_view());

      case RoutesName.homeView:
        return MaterialPageRoute(builder: (context) => HomeView());

      case RoutesName.AboutUs_View:
        return MaterialPageRoute(builder: (context) => AboutusView());

      case RoutesName.ContactUs_View:
        return MaterialPageRoute(builder: (context) => ContactusView());

      case RoutesName.HowItWorkView:
        return MaterialPageRoute(builder: (context) => HowItWorkView());

      case RoutesName.TermsPoliciesview:
        return MaterialPageRoute(builder: (context) => TermsPoliciesview());

      case RoutesName.RegisterUserview:
        return MaterialPageRoute(builder: (context) => RegisterUserview());

      case RoutesName.RegisterCompanyView:
        return MaterialPageRoute(builder: (context) => RegisterCompanyView()); //

      case RoutesName.SidebarXSetting:
        return MaterialPageRoute(builder: (context) => SidebarXSetting());

      // case RoutesName.JobsView:
      //   return MaterialPageRoute(builder: (context) => JobsView(controller: ));


      // case RoutesName.RadioplayerView:
      //   final arguments = settings.arguments as Map<String, dynamic>? ?? {};
      //   return MaterialPageRoute(
      //     builder: (context) => RadioplayerView(data: arguments),
      //   );
      //
      //
      // case RoutesName.chatscreen:
      //   final arguments = settings.arguments;
      //   if (settings.name == RoutesName.chatscreen && arguments is ChatUser) {
      //     return MaterialPageRoute(
      //       builder: (context) => ChatScreen(user: arguments),
      //     );
      //   }
      //   else
      //   {
      //     return null;
      //   }

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No Routes Available '),
            ),
          );
        });
    }
  }
}
