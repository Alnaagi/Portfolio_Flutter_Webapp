import 'package:flutter/material.dart';

class MyExperiencespage extends StatelessWidget {
  const MyExperiencespage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 26, 26, 41),
          borderRadius: BorderRadiusDirectional.circular(20.0)),
      height: screenHeight,
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "My Experiences",
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20.0)),
                height: 200,
                width: 200,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20.0)),
                height: 200,
                width: 200,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20.0)),
                height: 200,
                width: 200,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(20.0)),
                height: 200,
                width: 200,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
