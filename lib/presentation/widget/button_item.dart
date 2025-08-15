import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final String text;
  final Function(String) onClick;
  final Color color;
  
  const ButtonItem({
    super.key, 
    required this.text, 
    required this.onClick, 
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = color == Colors.black;
    
    return SizedBox(
      width: 140,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: isSelected ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: isSelected ? Colors.transparent : Colors.grey.shade300,
            ),
          ),
        ),
        onPressed: () => onClick(text),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}