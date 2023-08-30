import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:phitness/src/features/analytics/analytics_view.dart';
import 'package:phitness/src/features/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:phitness/src/features/camera/camera_view.dart';
import 'package:phitness/src/features/home/home_view.dart';
import 'package:phitness/src/features/profile/profile_view.dart';
import 'package:phitness/src/features/search/search_view.dart';
import 'package:phitness/src/utils/styles/app_color.dart';

class MainView extends StatefulWidget {
  MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int pageNumber = 0;

  List pages = [
    const HomeView(),
    const AnalyticsView(),
    const SearchView(),
    const CameraView(),
    const ProfileView(),
  ];

  void setPage(int newPageIndex) {
    setState(() {
      pageNumber = newPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageNumber],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 43.h, left: 18.w),
            child: SizedBox(
              height: 60.h,
              width: 60.w,
              child: FloatingActionButton(
                onPressed: () {
                  setPage(2);
                },
                elevation: 0,
                backgroundColor: AppColor.primaryColor,
                child: pageNumber == 2
                    ? Icon(IconlyBold.search)
                    : Icon(IconlyLight.search),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xffFFFFFF),
        height: 80.h,
        width: 375.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarWidget(
                onTap: () {
                  // pageNumber = 0;
                  setPage(0);
                },
                child: pageNumber == 0
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Home_bold.svg',
                            height: 25,
                            width: 16,
                            fit: BoxFit.scaleDown,
                          ),
                          SvgPicture.asset(
                            'assets/icons/dot.svg',
                            height: 10,
                            width: 10,
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      )
                    : SvgPicture.asset(
                        'assets/icons/Home.svg',
                        height: 18,
                        width: 16,
                        fit: BoxFit.scaleDown,
                      ),
              ),
              NavBarWidget(
                onTap: () {
                  // pageNumber = 1;
                  setPage(1);
                },
                child: pageNumber == 1
                    ? Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/analytic_icon.svg',
                            height: 25,
                            width: 16,
                            fit: BoxFit.scaleDown,
                          ),
                          SvgPicture.asset(
                            'assets/icons/dot.svg',
                            height: 10,
                            width: 10,
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      )
                    : SvgPicture.asset(
                        'assets/icons/analytic_icon.svg',
                        height: 10,
                        width: 5,
                        fit: BoxFit.scaleDown,
                      ),
              ),
              Container(

                  ),
              NavBarWidget(
                onTap: () {
                  setPage(3);
                },
                child: pageNumber == 3
                    ? Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Camera_bold.svg',
                            height: 25,
                            width: 16,
                            fit: BoxFit.scaleDown,
                          ),
                          SvgPicture.asset(
                            'assets/icons/dot.svg',
                            height: 10,
                            width: 10,
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      )
                    : SvgPicture.asset(
                        'assets/icons/Camera.svg',
                        height: 18,
                        width: 16,
                        fit: BoxFit.scaleDown,
                      ),
              ),
              NavBarWidget(
                onTap: () {
                  // pageNumber = 4;
                  setPage(4);
                },
                child: pageNumber == 4
                    ? Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Profile_bold.svg',
                            height: 25,
                            width: 16,
                            fit: BoxFit.scaleDown,
                          ),
                          SvgPicture.asset(
                            'assets/icons/dot.svg',
                            height: 10,
                            width: 10,
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      )
                    : SvgPicture.asset(
                        'assets/icons/Profile.svg',
                        height: 18,
                        width: 16,
                        fit: BoxFit.scaleDown,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
