// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('First App'),
//           backgroundColor: Colors.green,
//         ),
//         backgroundColor: Colors.red,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text(
//                 'Hello World!',
//               ),
//               Text(
//                 'It\'s time to learn Flutter!',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

 
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
        ),
      ),
    ),
  );
}