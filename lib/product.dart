import 'package:flutter/material.dart';
class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Text('your best coffe',style: TextStyle(fontSize: 22,
    fontWeight:FontWeight.bold,color: Colors.red),
    );
    // Row(
    //   children: [
    //     ListView(children: [ListTile(
    //       title: Text('your best coffe',style: TextStyle(fontSize: 22,
    //           fontWeight:FontWeight.bold,color: Colors.red),
    //       ),
    //     )],
    //
    //     ),
    //   ],
    // );
  }
}
class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  @override
  Widget build(BuildContext context) {
    return Text('your best drink',style: TextStyle(fontSize: 22,
        fontWeight:FontWeight.bold,color: Colors.green),
    );;
  }
}
