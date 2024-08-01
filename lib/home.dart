import 'package:flutter_application_7/widget/doctor.dart';
import 'package:flutter_application_7/widget/header.dart';
import 'package:flutter_application_7/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const HeaderWidget(),
              DoctorWidget(
                color: const Color(0xFF4894FE),
                title: "Dr.Imran Syahir",
                subTitle: "General Doctor",
                time: "11:00 - 12:00 AM",
                date: "Sunday, 12 June",
                timeColor: Colors.white,
                titleColor: Colors.white,
                subTitleColor: Colors.white,
                dateColor: Colors.white,
              ),
              const InputWidget(),
              Flexible(
                flex: 1, // Adjust the flex value to control space
                child: GridView(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 1,
                  ),
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: SvgPicture.asset(
                              "assets/svg/sun.svg",
                              height: 20,
                              width: 20,
                            ),
                            backgroundColor: const Color(0xFFFAFAFA),
                          ),
                          const Text(
                            "Covid 19",
                            style: TextStyle(
                                color: Color(0xFF8696BB), fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: SvgPicture.asset(
                              "assets/svg/profile-add.svg",
                              height: 30,
                              width: 30,
                            ),
                            backgroundColor: const Color(0xFFFAFAFA),
                          ),
                          const Text(
                            "Doctor",
                            style: TextStyle(
                                color: Color(0xFF8696BB), fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: SvgPicture.asset(
                              "assets/svg/link.svg",
                              height: 30,
                              width: 30,
                            ),
                            backgroundColor: const Color(0xFFFAFAFA),
                          ),
                          const Text(
                            "Medicine",
                            style: TextStyle(
                                color: Color(0xFF8696BB), fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: SvgPicture.asset(
                              "assets/svg/hospital.svg",
                              height: 30,
                              width: 30,
                            ),
                            backgroundColor: const Color(0xFFFAFAFA),
                          ),
                          const Text(
                            "Hospital",
                            style: TextStyle(
                                color: Color(0xFF8696BB), fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    DoctorWidget(
                      color: Colors.white,
                      title: "Dr. Joseph Brostito",
                      subTitle: "Dental Specialist",
                      time: "11:00 - 12:00 AM",
                      date: "Sunday, 12 June",
                      titleColor: const Color(0xFF001834),
                      dateColor: const Color(0xFF8696BB),
                      subTitleColor: const Color(0xFF8696BB),
                      timeColor: const Color(0xFF8696BB),
                    ),
                    const SizedBox(height: 10),
                    DoctorWidget(
                      color: Colors.white,
                      title: "Dr.Imran Syahir",
                      subTitle: "General Doctor",
                      time: "11:00 - 12:00 AM",
                      date: "Sunday, 12 June",
                      titleColor: const Color(0xFF001834),
                      dateColor: const Color(0xFF8696BB),
                      subTitleColor: const Color(0xFF8696BB),
                      timeColor: const Color(0xFF8696BB),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
