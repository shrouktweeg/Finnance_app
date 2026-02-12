import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_fonts.dart';
import 'package:untitled/core/widgets/custom_circle_container.dart';
import 'package:untitled/features/add/add_screen.dart';
import 'package:untitled/features/cards/my_cards_screen.dart';
import 'package:untitled/features/home/home_screen.dart';
import 'package:untitled/features/main/widgets/custom_add_icon_widget.dart';
import 'package:untitled/features/profile/profile_screen.dart';
import 'package:untitled/features/statistic/statistic_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget>screens=[
    HomeScreen(),
    StatisticScreen(),
    AddScreen(),
    MyCardsScreen(),
    ProfileScreen(),
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[currentIndex]),
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex:currentIndex ,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Color(0xffFDFDFD),
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: Color(0xff9CA4AB),
          selectedLabelStyle: TextStyle(color: Color(0xff1F2C37),fontWeight: FontWeight.w500,fontFamily: AppFonts.urbanistMedium,fontSize: 12.sp) ,
          unselectedLabelStyle:TextStyle(color: Color(0xff9CA4AB),fontWeight: FontWeight.w500,fontFamily: AppFonts.urbanistMedium,fontSize: 12.sp) ,
          onTap: (index){
          setState(() {
            currentIndex=index;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.insert_chart),label: 'Statistics'),
            BottomNavigationBarItem(icon: CustomCircleContainer(width: 48, height: 48, color: AppColor.primaryColor, borderColor: AppColor.primaryColor, child: CustomAddIconWidget(),),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.wallet),label: 'My Card'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

      ]),
    );
  }
}
