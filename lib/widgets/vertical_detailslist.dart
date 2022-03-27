import 'package:flutter/material.dart';

class VerticalDetailsList extends StatefulWidget {
  const VerticalDetailsList({ Key? key }) : super(key: key);

  @override
  State<VerticalDetailsList> createState() => _VerticalDetailsListState();
}

class _VerticalDetailsListState extends State<VerticalDetailsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color:const Color(0xFF3E3A6D)
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                color: Color(0xFFDB61A1),
                borderRadius: BorderRadius.circular(19),

              ),
            ),
            Expanded(child: Padding(padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Introduction Design Graphic ",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,fontSize: 15,
                        ),
                        ),
                        SizedBox(width: 6,),
                        Row(
                          children: [
                             Text("12 minutes ",style: TextStyle(
                          color: Color(0xFF8C8C8C),
                          fontWeight: FontWeight.w400,fontSize: 12,
                        ),
                        ),
                        SizedBox(width: 12,),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFDB61A1),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            child: Text("free",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 11),),
                          ),
                        )
                          ],
                        )
                      ],
                    ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}