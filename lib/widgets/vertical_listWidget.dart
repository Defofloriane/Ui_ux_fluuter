import 'package:flutter/material.dart';

class VerticalListWidget extends StatelessWidget {
  final String Coursetitle, duration;
  final double courserating;
  const VerticalListWidget(
      {Key? key,
      required this.Coursetitle,
      required this.duration,
      required this.courserating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF3E3A6D),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 13,
                      offset: Offset(0, 4),
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26, bottom: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Coursetitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          duration,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,  
                          color: Color(0xFF9C9A94),
                          ),
                        ),
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: Color(0xFFF4C465),
                            );
                          }),
                        ),
                      
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
                    Positioned(
                          bottom: 34,
                          right: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.06,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFEB532A2),
                            ),
                            child: Icon(Icons.play_arrow,color: Colors.white,size: 13,),
                          ),
                          ),
          ],
        ),
      ),
    );
  }
}
