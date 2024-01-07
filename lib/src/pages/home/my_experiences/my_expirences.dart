import 'package:flutter/material.dart';

class MyExperiencespage extends StatelessWidget {
  const MyExperiencespage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 5),
          child: Text(
            "My Experiences",
            style: TextStyle(
                color: Colors.grey.shade200,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        // Row(
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadiusDirectional.circular(20.0)),
        //       height: 200,
        //       width: 200,
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadiusDirectional.circular(20.0)),
        //       height: 200,
        //       width: 200,
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadiusDirectional.circular(20.0)),
        //       height: 200,
        //       width: 200,
        //     ),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadiusDirectional.circular(20.0)),
        //       height: 200,
        //       width: 200,
        //     ),
        //   ],
        // ),
        AspectRatio(
          aspectRatio: 1.2,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return const MyTile();
            },
          ),
        ),
        // Expanded(
        // child: ListView.builder(
        //   itemCount: 4,
        //   itemBuilder: (context, index) {
        //     return const MyTile();
        //   },
        // ),
        // ),
      ],
    );
  }
}

// class MyBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.grey[400],
//         ),
//       ),
//     );
//   }
// }

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image(
                    image: AssetImage(
                      'assets/kali.png',
                    ),
                  ),
                ),
                Text(
                  "Penetration Testing",
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 117, 98, 224)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, top: 10, bottom: 10, right: 38),
                  child: Image(
                    image: AssetImage(
                      'assets/flutter.png',
                    ),
                  ),
                ),
                Text(
                  "Mobile Development",
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 117, 98, 224)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, top: 10, bottom: 10, right: 38),
                  child: Image(
                    image: AssetImage(
                      'assets/html.png',
                    ),
                  ),
                ),
                Text(
                  "Web Development",
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 117, 98, 224)),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: 10,
        //   ),
        //   child: Container(
        //     child: Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(left: 50.0),
        //           child: Image(
        //             image: AssetImage(
        //               'assets/kali.png',
        //             ),
        //           ),
        //         ),
        //         Text(
        //           "Penetration Testing",
        //           style: TextStyle(
        //               color: Colors.grey.shade100,
        //               fontSize: 20,
        //               fontWeight: FontWeight.normal),
        //         ),
        //       ],
        //     ),
        //     height: 78,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(8),
        //         color: Color.fromARGB(255, 117, 98, 224)),
        //   ),
        // ),
      ],
    );
  }
}
