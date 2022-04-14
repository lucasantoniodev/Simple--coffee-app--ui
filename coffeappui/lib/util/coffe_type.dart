import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String coffeType;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeType(
      {Key? key,
      required this.coffeType,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
