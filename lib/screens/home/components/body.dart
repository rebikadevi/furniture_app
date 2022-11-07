import 'package:assign_app/components/search_box.dart';
import 'package:assign_app/screens/home/components/recommond_products.dart';
import 'package:flutter/material.dart';

import '../../../constrants.dart';
import '../../../services/fetchProducts.dart';
import 'category_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(onChanged: (value) {}),
        CategoryList(),
        const SizedBox(height: kDefaultPadding / 2),
        Expanded(
            child: Stack(children: <Widget>[
          // Our background
          Container(
            margin: const EdgeInsets.only(top: 70),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          FutureBuilder(
            future: fetchProducts(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? RecommandProducts(products: snapshot.data)
                  : Center(child: Image.asset('assets/ripple.gif'));
            },
          ),
        ]))
      ],
    );
  }
}
