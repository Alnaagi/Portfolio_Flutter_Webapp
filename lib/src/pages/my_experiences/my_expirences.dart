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
        Text(
          "My Experiences",
          style: TextStyle(
              color: Colors.grey.shade200,
              fontSize: 30,
              fontWeight: FontWeight.bold),
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
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return MyBox();
              },
            ),
          ),
        ),
        // Expanded(
        //   child: ListView.builder(
        //     itemCount: 4,
        //     itemBuilder: (context, index) {
        //       return const MyTile();
        //     },
        //   ),
        // ),
      ],
    );
  }
}

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}

// class MyTile extends StatelessWidget {
//   const MyTile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 78,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
//       ),
//     );
//   }
// }
