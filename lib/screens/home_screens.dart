import 'package:flutter/material.dart';
import 'package:uiuxflutter/screens/course_details_screens.dart';
import 'package:uiuxflutter/widgets/my_horizontalListWithListview.dart';
import 'package:uiuxflutter/widgets/widgets.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Online",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => CourseDetails(),
                      ));
                },
                child: Text(
                  "Master Class",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 349,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return HorizontalList(
                      headLine: "Recommended  ",
                      cousrtiltle: "UI/UX DESIGNER",
                      cousrtiltle2: "BEGINNER",
                      startcolor: 0xFF9288E4,
                      //image: '',
                      endcolor: 0xFF534EA7);
                }),
          ),
          SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Free Online Class",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              Text(
                "From Over 80 Lectures ",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF9C9A94),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return VerticalListWidget(
                    Coursetitle: "Flutter developer",
                    duration: "8 Hours",
                    courserating: 3.8);
              })
        ],
      )),
    );
  }
}
