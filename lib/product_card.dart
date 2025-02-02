import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCard({super.key,required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(16),
      color: const Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title , style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 5),
          Text('\$$price', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 5),
          Center(child: Image.asset(image , height: 175)),
            
        ],
      ),
    );
  }
}
