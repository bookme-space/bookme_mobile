import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Input({required String hint, required TextEditingController controller, bool? obscureText}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.yellow)
    ),
    child: TextField(
      obscureText: obscureText ?? false,
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey)
      ),
    ),
  );
}