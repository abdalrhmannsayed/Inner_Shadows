import 'package:flutter/material.dart';

class InnerShadows extends StatelessWidget {
  const InnerShadows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[600]!,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[200]!,
                Colors.grey[300]!,
                Colors.grey[400]!,
                Colors.grey[500]!,
              ],
              stops: const [
                0.1,
                0.3,
                0.8,
                0.9,
              ],
            ),
          ),
          child: Icon(
            Icons.android,
            size: 60,
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
