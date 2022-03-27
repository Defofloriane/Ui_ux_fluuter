import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uiuxflutter/widgets/widgets.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1, 0),
                      colors: [
                        Color(0xFFF4C465),
                        Color(0xFFC63956),
                      ]))),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 22, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      Icons.star,
                      color: Color(0xFFF4C465),
                    );
                  }),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Graphic Design Master ",
                  overflow: TextOverflow
                      .ellipsis, //si ca sort de l ecran ca mets .... a la suite du txt
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 29,
                ),
                /*pour faire des circle avec des personnes*/
                Row(
                  children: [
                    SizedBox(
                      width: 112.5,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/person3.jpg'))),
                          )),
                          Positioned(
                              left: 22.5,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/person2.jpg'))),
                              )),
                          Positioned(
                              left: 45,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/person1.jpg'))),
                              )),
                          Positioned(
                              left: 67.5,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/person4.jpg'))),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "+ 28 k Members",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          width: 43,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFF353567)),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            child: Icon(Icons.thumb_up,
                                color: Colors.white, size: 20),
                          ),
                          //child: SvgPicture.asset('assets/images/icon_like.svg'),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 54,
          ),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            physics:const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
            return VerticalDetailsList();
          })
        ],
      )),
    );
  }
}
