import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:sports/detals/detals.dart';

import '../class.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: const Color(
            0xff070707,
          ),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                child: Image.asset(
                  'images/home.png',
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/recipe.png',
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/blackboard.png',
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/shopping-cart.png',
                color: Colors.grey,
              ),
              label: 'Home',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Card(
            color: const Color(
              0xff38474C,
            ),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Center(
              child: Image.asset(
                'images/face.png',
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GOOD MORNING',
              style: TextStyle(
                color: const Color(
                  0xff848484,
                ),
                fontSize: 14.sp,
              ),
            ),
            Text(
              'Rose Marlo',
              style: TextStyle(
                color: const Color(
                  0xff474747,
                ),
                fontSize: 31.sp,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(
        0xffF5F5F5,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    'images/Vector.png',
                  ),
                ),
                Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    'images/Vector.png',
                  ),
                ),
                Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    'images/Vector.png',
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Select your Training',
                  style: TextStyle(
                    color: const Color(0xff848484),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset(
                  'images/Vector.png',
                ),
                Image.asset(
                  'images/Vector.png',
                ),
                Image.asset(
                  'images/Vector.png',
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(
                      10,
                      5,
                      10,
                      50,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Get.to(
                            const Detals(),
                          );
                        });
                      },
                      child: Container(
                        width: 320.w,
                        height: 552.h,
                        decoration: BoxDecoration(
                          color: const Color(
                            0xff167470,
                          ),
                          borderRadius: BorderRadius.circular(
                            50.sp,
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                              'images/train.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 260,
                            left: 30,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '''SQUATS''',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'WITH',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/fire.png',
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Image.asset(
                                    'images/250Kcal.png',
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Image.asset(
                                imagesd[index],
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
