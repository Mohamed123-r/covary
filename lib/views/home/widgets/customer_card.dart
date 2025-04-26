import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 100,
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
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "Noto Kufi Arabic",
            ),
          ),
          SizedBox(height: 4),
          Text(
            '+20 010873654234',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffAAAAAA),
              fontFamily: "Noto Kufi Arabic",
            ),
          ),
        ],
      ),
    );
  }
}

