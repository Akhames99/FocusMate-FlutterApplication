import 'package:FocusMate/Styling/mainbuttonstyling.dart';
import 'package:flutter/material.dart';
import 'package:FocusMate/Styling/text_styling.dart';
import 'package:FocusMate/Styling/button_styling.dart';
import 'package:intl/intl.dart'; // Importing intl package for date formatting

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current date
    final now = DateTime.now();
    final formattedDate =
        "${DateFormat.EEEE().format(now)}, ${now.day}${DateFormat.MMM().format(now).toLowerCase()}";

    void showNewTaskDialog(BuildContext context) {
      showGeneralDialog(
        context: context,
        transitionDuration: Duration(milliseconds: 450),
        pageBuilder: (context, animation, secondaryAnimation) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              color: Color(0xFFFE781E),
              child: Container(
                height: 620,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/Icons/slider.png',
                      width: 28,
                      height: 28,
                      color: Colors.white,
                    ),
                    SizedBox(height: 28),
                    SizedBox(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Image.asset(
                              'assets/Icons/tall.png',
                              width: 45,
                              height: 45,
                              color: Colors.white,
                            ),
                          ),
                          TextField(
                            cursorColor: Colors.white,
                            cursorOpacityAnimates: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 32),
                              hintText: "What Do You Need To Do?",
                              hintStyle: TextStyle(
                                color: Colors.white54,
                                fontSize: 24,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28),
                    Container(
                      height: 130,
                      width: 436,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Description',
                          hintStyle: TextStyle(color: Colors.white54),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },

        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, 1), // Start above the screen
              end: Offset.zero,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutCubicEmphasized,
              ),
            ),
            child: child,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Color(0XFF466174),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonStyling(
              onPressed: () {},
              child: TextStyling(
                "Today's Tasks",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            ButtonStyling(onPressed: () {}, child: TextStyling("Habits")),
            ButtonStyling(onPressed: () {}, child: TextStyling("Calender")),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Images/Pattern.png',
              opacity: AlwaysStoppedAnimation(0.05),
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Today's Tasks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          formattedDate,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                      child: MainButtonStyling(
                        onPressed: () => showNewTaskDialog(context),
                        child: Text(
                          "New Task",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Icons/tactical.png',
                          width: 160,
                          height: 160,
                        ),
                        Text(
                          'No Tasks Yet!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 140),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 16.5, 0, 0),
                    height: 99,
                    width: 274,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF6600),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Icons/quote.png',
                              width: 26,
                              height: 26,
                              color: Colors.white,
                            ),
                            SizedBox(width: 13),
                            Text(
                              "Quote's Of The Day",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                '"Success is not final, failure is not fatal:It is the courage to continue that counts."',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
