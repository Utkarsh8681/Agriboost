import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controler,
  });

  final String hintText;
  final TextEditingController controler;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controler,
      decoration: InputDecoration(
        // labelText: 'Username', // Adds a floating label
        hintText: hintText, // Adds placeholder text
        // prefixIcon:
        //     Icon(Icons.person), // Adds an icon at the start
        // suffixIcon: Icon(
        //     Icons.check_circle), // Adds an icon at the end
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(200))), // Adds a border around the TextField
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ), // Border when TextField is focused
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ), // Border when TextField is not focused
        filled: true, // Fills the background
        fillColor: Colors.white, // Background color
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ), // Adjusts the padding inside the TextField
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   // final String labelText;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   final bool obscureText;
//   // final Widget? prefixIcon;
//   // final Widget? suffixIcon;

//   const CustomTextField({
//     Key? key,
//     required this.hintText,
//     // this.labelText = '',
//     this.controller,
//     this.keyboardType = TextInputType.text,
//     this.obscureText = false,
//     // this.prefixIcon,
//     // this.suffixIcon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         // labelText: 'Username', // Adds a floating label
//         hintText: hintText, // Adds placeholder text
//         // prefixIcon:
//         //     Icon(Icons.person), // Adds an icon at the start
//         // suffixIcon: Icon(
//         //     Icons.check_circle), // Adds an icon at the end
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//                 Radius.circular(200))), // Adds a border around the TextField
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.blue, width: 2.0),
//         ), // Border when TextField is focused
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.grey, width: 1.0),
//         ), // Border when TextField is not focused
//         filled: true, // Fills the background
//         fillColor: Colors.white, // Background color
//         contentPadding: EdgeInsets.symmetric(
//           vertical: 15.0,
//           horizontal: 10.0,
//         ), // Adjusts the padding inside the TextField
//       ),
//     );
//   }
// }
