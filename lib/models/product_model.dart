import 'package:flutter/material.dart';
import 'package:nakbrach/minor_screens/product_deatails.dart';

class ProductModel extends StatelessWidget {
  final dynamic products;
  const ProductModel({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(productList: products),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Container(
                  constraints:
                      const BoxConstraints(minHeight: 100, maxHeight: 250),
                  child:
                      Image(image: NetworkImage(products['productImage'][0])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      products['productname'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          products['price'].toStringAsFixed(2) + (' \$'),
                          style: const TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
