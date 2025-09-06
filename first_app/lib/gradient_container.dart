import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

const List<String> diceImages = [
  'assets/images/dice-1.png',
  'assets/images/dice-2.png',
  'assets/images/dice-3.png',
  'assets/images/dice-4.png',
  'assets/images/dice-5.png',
  'assets/images/dice-6.png',
];

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  String currentDice = 'assets/images/dice-1.png';
  String lastClicked = 'Never';

  void rollDice() {
    final random = Random();
    final now = DateTime.now();
    final formattedTime =
        '${DateFormat('HH:mm:ss').format(now)}:${now.millisecond.toString().padLeft(2, '0')}';

    setState(() {
  
      currentDice = 'assets/images/dice-${ random.nextInt(6) + 1}.png';
      // currentDice = diceImages[random.nextInt(diceImages.length)];

      lastClicked = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(currentDice, width: 200),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(50.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
            const SizedBox(height: 10),
            Text(
              'Last clicked: $currentDice',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }
