import 'package:flutter/material.dart';

import 'answer_screen.dart';
import 'coin_screen.dart';
import 'dice_screen.dart';
import 'rock_paper_scissors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Choice App'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Render Your \nVerdict',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DiceScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 50,
                          child: Image.asset('assets/Dice/dicefire.png'),
                        ),
                      ),
                      Text(
                        'Dice Game',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.orange.shade100,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CoinScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 50,
                          child: Image.asset('assets/Coin/coinicon.png'),
                        ),
                      ),
                      Text(
                        'Coin Game',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.orange.shade100,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 4,
                endIndent: 40,
                indent: 40,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RPSScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 50,
                          child: Image.asset('assets/RPS/heavy-metal.png'),
                        ),
                      ),
                      Text(
                        'Rock Paper\nScissors',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.orange.shade100,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnswerScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 50,
                          child: Image.asset('assets/Answer/answers.png'),
                        ),
                      ),
                      Text(
                        'Computer\nAnswers',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          color: Colors.orange.shade100,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
