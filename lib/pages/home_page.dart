import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/primary.png',
                  width: 140,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Jhon Wick',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Senior Flutter Developer',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/images/item1.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item2.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item3.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item4.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item5.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item6.png',
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 224,
                  height: 55,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(whiteColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return Container(
                            height: 290,
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            color: whiteColor,
                            child: Column(
                              children: [
                                Text(
                                  'Update Profile',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'You are only able to change\nthe picture profile once',
                                  style: TextStyle(
                                    color: greyColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 224,
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              orangeColor),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 76,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
