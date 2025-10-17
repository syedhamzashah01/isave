import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;

Widget categoryItem(IconData icon, String label) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: Colors.black54),
        const SizedBox(height: 5),
        Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.black87)),
      ],
    ),
  );
}
