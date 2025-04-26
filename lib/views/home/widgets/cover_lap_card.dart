import 'package:flutter/material.dart';

class CoverLapCard extends StatelessWidget {

final String  image ;

  const CoverLapCard({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.network(image,
      fit: BoxFit.fill,)
    );
  }
}

