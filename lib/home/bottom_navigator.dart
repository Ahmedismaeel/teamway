import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internal_app/expenses/view/expenses_view.dart';
import 'package:internal_app/global/widgets/colors.dart';
import 'package:internal_app/home/controller/my_profile_controller.dart';
import 'package:internal_app/home/home_view.dart';
import 'package:internal_app/home/profile_view.dart';
import 'package:internal_app/leads/view/leads_list_view.dart';
import 'package:internal_app/project/view/project_view.dart';
import 'package:internal_app/task/view/create_task_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class HomeNavigatorView extends ConsumerStatefulWidget {
  const HomeNavigatorView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeNavigatorViewState();
}

class _HomeNavigatorViewState extends ConsumerState<HomeNavigatorView> {
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;
  int page = 0;
  final list = [
    HomeView(),
    ProjectView(
      isSelect: false,
    ),
    ExpensesView(),
    LeadListView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    ref.watch(getMyProfileProvider);
    return Scaffold(
      // floatingActionButton: InkWell(
      //   onTap: () {
      //     CreateTaskView()
      //         .launch(context, pageRouteAnimation: PageRouteAnimation.Fade);
      //   },
      //   child: Container(
      //     width: 55,
      //     height: 55,
      //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      //     decoration: boxDecorationDefault(shape: BoxShape.circle),
      //     child: Center(
      //       child: Icon(Icons.add),
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   // backgroundColor: UiColors.primary,
      //   // inactiveColor: UiColors.white,
      //   // activeColor: UiColors.secondary,
      //   icons: const [
      //     Icons.task_sharp,
      //     Icons.dashboard_customize,
      //     Icons.money,
      //     Icons.person,
      //     Icons.person,
      //   ],
      //   activeIndex: page,
      //   // gapLocation: GapLocation.end,
      //   // notchSmoothness: NotchSmoothness.defaultEdge,
      //   leftCornerRadius: 32,
      //   rightCornerRadius: 0,
      //   onTap: (index) => setState(() => page = index),
      //   // b\
      //   //other params
      // ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        /// Provide NotchBottomBarController
        notchBottomBarController: _controller,
        color: Colors.white,
        showLabel: true,
        textOverflow: TextOverflow.visible,
        maxLine: 1,
        shadowElevation: 2,
        kBottomRadius: 28.0,

        // notchShader: const SweepGradient(
        //   startAngle: 0,
        //   endAngle: pi / 2,
        //   colors: [Colors.red, Colors.green, Colors.orange],
        //   tileMode: TileMode.mirror,
        // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
        notchColor: UiColors.primary,

        /// restart app if you change removeMargins
        removeMargins: false,
        bottomBarWidth: 500,
        showShadow: true,
        durationInMilliSeconds: 100,

        itemLabelStyle: const TextStyle(fontSize: 10),

        elevation: 1,
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.task,
              color: UiColors.primary,
            ),
            activeItem: Icon(
              Icons.task,
              color: UiColors.secondary,
            ),
            itemLabel: 'Tasks',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.dashboard_customize,
              color: UiColors.primary,
            ),
            activeItem: Icon(
              Icons.dashboard_customize,
              color: UiColors.secondary,
            ),
            itemLabel: 'Projects',
          ),
          BottomBarItem(
            inActiveItem: Image.asset(
              "assets/images/expenses.png",
              color: UiColors.primary,
            ),
            activeItem: Image.asset(
              "assets/images/expenses.png",
              color: UiColors.secondary,
            ),
            itemLabel: 'Expenses',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.people,
              color: UiColors.primary,
            ),
            activeItem: Icon(
              Icons.people,
              color: UiColors.secondary,
            ),
            itemLabel: 'Leads',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.settings,
              color: UiColors.primary,
            ),
            activeItem: Icon(
              Icons.settings,
              color: UiColors.secondary,
            ),
            itemLabel: 'Settings',
          ),
        ],
        onTap: (index) {
          // log('current selected index $index');

          // _pageController.jumpToPage(index);
          page = index;
          setState(() {});
        },
        kIconSize: 24.0,
      ),
      body: list[page],
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   backgroundColor: UiColors.primary,
      //   inactiveColor: UiColors.white,
      //   activeColor: UiColors.secondary,
      //   icons: [Icons.home, Icons.person],
      //   //Icons.wysiwyg, Icons.more_time,
      //   // scaleFactor: 1.2,
      //   activeIndex: page,
      //   iconSize: 28,
      //   gapWidth: 0,
      //   // gapLocation: GapLocation.center,
      //   // notchSmoothness: NotchSmoothness.defaultEdge,
      //   onTap: (index) => setState(() => page = index),
      //   //other params
      // ),
    );
  }
}
