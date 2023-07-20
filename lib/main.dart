import 'package:flutter/material.dart';
import 'package:flutter_application_001/apiController.dart';
import 'package:flutter_application_001/producttile.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: HomeMain()));
}

class HomeMain extends StatelessWidget {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Color.fromARGB(255, 20, 194, 194),
          title: Text(
            "Employee List",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Obx(() {
          if (productController.isLoading.value) {
            return SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return SliverList.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return productTile(productController.productList[index]);
              },
            );
          }
        }),
      ]),
    );
  }
}
