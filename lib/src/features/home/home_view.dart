import 'package:flutter/material.dart';
import 'package:phitness/src/utils/styles/app_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PrimaryAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Abass Sulaimon')
                    ],
                  ),
                  Icon(Icons.notification_add)
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      constraints:
                          const BoxConstraints.expand(height: 150, width: 340),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.red,
                      ),
                      width: 325,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      constraints:
                          const BoxConstraints.expand(height: 57, width: 340),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.red,
                      ),
                      width: 325,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Activity Status',
                      style: AppStyle.semiBold,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      constraints:
                          const BoxConstraints.expand(height: 150, width: 340),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 315,
                            width: 160,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 160,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22)),
                                    color: Colors.red),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 150,
                                width: 160,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(22)),
                                    color: Colors.red),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Workout Progress',
                          style: AppStyle.semiBold,
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.rectangle),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      width: 325,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(color: Colors.red),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Latest Workout',
                          style: AppStyle.semiBold,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('See more'),
                        ),
                      ],
                    ),
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const WorkoutTile();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 20);
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class  PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//    return AppBar(
//      elevation: 0,
//
//      backgroundColor: Color(0xffF7F8F8),
//      toolbarHeight: 80,
//      automaticallyImplyLeading: false,
//      title: Padding(
//        padding: const EdgeInsets.symmetric(horizontal: 10.0),
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: [
//            Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Text('Welcome back'),
//                SizedBox(
//                  height: 10,
//                ),
//                Text('Abass Sulaimon')
//              ],
//            ),
//            Icon(Icons.notification_add)
//          ],
//        ),
//      ),
//    );
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size(375, 100);
// }

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('FullBody Workout'),
                  Text('180 calories burn | 20 mins'),
                  Text('====================='),
                ],
              ),
            ),
            Icon(Icons.ac_unit)
          ],
        ),
      ),
    );
  }
}
