import 'package:flutter/material.dart';
import 'package:streamingapp/shared/rounded_label.dart';

class OtherItemResult extends StatelessWidget {
  final String name;
  OtherItemResult({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: Colors.grey[800]!),
      )),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
