import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_001/model.dart';

class productTile extends StatelessWidget {
  final ProductModel products;
  productTile(this.products);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: CachedNetworkImage(
            imageUrl: ("${products.profileImage}"),
            fit: BoxFit.cover,
          ),
        ),
        title: Text("${products.name}"),
        subtitle: Text("${products.email}"),
      ),
    );
  }
}
