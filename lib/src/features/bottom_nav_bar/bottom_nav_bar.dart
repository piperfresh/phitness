import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:phitness/src/utils/styles/app_color.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      height: 80,
      width: 375,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarWidget(
              onTap: () {},
              child: const Icon(
                IconlyBold.home,
                color: AppColor.primaryColor,
                size: 30,
              ),
            ),
            NavBarWidget(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/analytic_icon.svg',
                height: 10,
                width: 5,
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(),
            NavBarWidget(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/Camera.svg',
                  height: 18,
                  width: 16,
                  fit: BoxFit.scaleDown,
                )),
            NavBarWidget(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/Profile.svg',
                  height: 18,
                  width: 16,
                  fit: BoxFit.scaleDown,
                )),
          ],
        ),
      ),
    );
  }
}

class NavBarWidget extends StatelessWidget {
  void Function()? onTap;
  Widget? child;

  NavBarWidget({
    this.onTap,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(height: 36, width: 36, child: child),
    );
  }
}

//final List<Widget> screens = const [
//     HomePage(),
//     TransferPage(),
//     SendPage(),
//     AlertPage(),
//     ProfilePage()
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = const HomePage();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(bucket: bucket, child: currentScreen),
//       floatingActionButton: Align(
//         alignment: Alignment.bottomCenter,
//         child: Visibility(
//           visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 43, left: 18),
//             child: FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   currentScreen = const SendPage();
//                   currentTab = 2;
//                 });
//               },
//               elevation: 0,
//               backgroundColor: const Color(0xFF012A58),
//               child: const Icon(
//                 Icons.arrow_upward_rounded,
//                 size: 35,
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         child: SizedBox(
//           height: 80,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const HomePage();
//                         currentTab = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/icons/home_icon.png",
//                           width: 24,
//                           height: 24,
//                           color: currentTab == 0
//                               ? activeColor
//                               : const Color(0xFF787879),
//                         ),
//                         const SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           "Home",
//                           style: TextStyle(
//                             color: currentTab == 0
//                                 ? activeColor
//                                 : const Color(0xFF787879),
//                             fontSize: 12,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const TransferPage();
//                         currentTab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/icons/transfer_inactive.png",
//                           width: 24,
//                           height: 24,
//                           color: currentTab == 1
//                               ? activeColor
//                               : const Color(0xFF787879),
//                         ),
//                         const SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           "Transfer",
//                           style: TextStyle(
//                             color: currentTab == 1
//                                 ? activeColor
//                                 : const Color(0xFF787879),
//                             fontSize: 12,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               MaterialButton(
//                 minWidth: 40,
//                 onPressed: () {
//                   setState(() {
//                     currentScreen = const SendPage();
//                     currentTab = 2;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const SizedBox(
//                       height: 28,
//                     ),
//                     Text(
//                       "Send",
//                       style: TextStyle(
//                           color: currentTab == 2
//                               ? activeColor
//                               : const Color(0xFF787879),
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const AlertPage();
//                         currentTab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/icons/alert_icon.png",
//                           width: 24,
//                           height: 24,
//                           color: currentTab == 3
//                               ? activeColor
//                               : const Color(0xFF787879),
//                         ),
//                         const SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           "Alert",
//                           style: TextStyle(
//                             color: currentTab == 3
//                                 ? activeColor
//                                 : const Color(0xFF787879),
//                             fontSize: 12,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = const ProfilePage();
//                         currentTab = 4;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/icons/profile_icon.png",
//                           width: 24,
//                           height: 24,
//                           color: currentTab == 4
//                               ? activeColor
//                               : const Color(0xFF787879),
//                         ),
//                         const SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           "Profile",
//                           style: TextStyle(
//                             color: currentTab == 4
//                                 ? activeColor
//                                 : const Color(0xFF787879),
//                             fontSize: 12,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }


