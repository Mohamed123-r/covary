import 'package:flutter/material.dart';

class LapCard extends StatelessWidget {
  const LapCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Ali Saleh El-Haj',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "Noto Kufi Arabic",
            ),
          ),

        ],
      ),
    );
  }
}

