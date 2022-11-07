import 'package:assign_app/models/product.dart';
import 'package:assign_app/screens/home/components/product_card.dart';
import 'package:flutter/material.dart';

import '../../details/detail_screen.dart';

class RecommandProducts extends StatelessWidget {
  const RecommandProducts({
    Key? key,
    required this.products,
    
  }) : super(key: key);

  final List<Product>? products;
 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          products!.length,
          (index) => ProductCard(
            product: products![index],
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products![index],
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }
}
