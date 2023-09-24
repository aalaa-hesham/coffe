import 'package:flutter/material.dart';
class Im extends StatefulWidget {
  const Im({super.key});

  @override
  State<Im> createState() => _ImState();
}

class _ImState extends State<Im> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: new BorderRadius.circular(24.0),
      child: Image(
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
        image: NetworkImage("https://www.acouplecooks.com/wp-content/uploads/2021/05/Latte-Art-066.jpg"
    ),
      ),
    );
  }
}
class Cup extends StatefulWidget {
  const Cup({super.key});

  @override
  State<Cup> createState() => _CupState();
}

class _CupState extends State<Cup> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: new BorderRadius.circular(24.0),
      child: Image(
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
        image: NetworkImage("https://methodicalcoffee.com/cdn/shop/articles/cap_1024x.jpg?v=1684507364"),
      ),
    );;
  }
}
