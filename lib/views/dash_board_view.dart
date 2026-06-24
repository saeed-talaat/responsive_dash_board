import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adptive_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null,
      
      appBar: MediaQuery.sizeOf(context).width <  SizeConfig.tablet ?  AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFAFAFA),
        leading:IconButton(onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        } , icon:  Icon(Icons.menu)),
      ) : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout() ,
        tabletLayout: (context) => const  DashBoardTabletLayout() ,
        desktopLayout: (context) => const  DashBoardDesktopLayout(),
      ),
    );
  }
}

