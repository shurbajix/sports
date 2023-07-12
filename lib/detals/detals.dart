import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Detals extends StatefulWidget {
  const Detals({super.key});

  @override
  State<Detals> createState() => _DetalsState();
}

class _DetalsState extends State<Detals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Get.back();
            });
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color(
        0xff167470,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 32,
                      ),
                      child: Image.asset(
                        'images/details.png',
                      ),
                    ),
                  ),
                  Container(
                    width: 400.w,
                    height: 290.h,
                    decoration: const BoxDecoration(
                      color: Color(0xffFEF9F1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(54),
                        topRight: Radius.circular(54),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                          ),
                          Container(
                            width: 335.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'images/Frame.png',
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'images/Frame1.png',
                                        ),
                                        Image.asset(
                                          'images/Frame2.png',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            '''Battle ropes Exercise''',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: const Color(
                                0xff010101,
                              ),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: Text(
                              'Battle ropes target most of the muscles in your body, including those in your abdominals, shoulders, arms, ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(
                                  0xff848484,
                                ),
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 327.w,
                            height: 48.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                backgroundColor: const Color(
                                  0xffF8C06D,
                                ),
                                shadowColor: const Color(
                                  0xffF8C06D,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                '''Let's Workout''',
                                style: TextStyle(
                                  color: const Color(
                                    0xff0A0B17,
                                  ),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 290.h,
                right: 135.h,
                child: SizedBox(
                  width: 76,
                  height: 76,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      backgroundColor: const Color(
                        0xffF8C06D,
                      ),
                      shadowColor: const Color(
                        0xffF8C06D,
                      ),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Image.asset(
                        'images/Vector1.png',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
