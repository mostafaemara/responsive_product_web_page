import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';
import 'package:responsive_product_web_page/product_page/widgets/product_colors.dart';

import 'rating.dart';

class ProductOptions extends StatefulWidget {
  const ProductOptions({super.key});

  @override
  State<ProductOptions> createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  int _selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 346,
      height: 470,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          alignment: Alignment.center,
          width: 65,
          height: 23,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(11)),
          child: const Text(
            "ON SALE",
            style: TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Xbox One Wireless Controller".toUpperCase(),
          style: const TextStyle(fontSize: 30, fontFamily: "Barlow"),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "Accessories",
          style: TextStyle(
              fontSize: 16, fontFamily: "Roboto", color: AppColors.black),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: const [
            Text(
              "\$39.99",
              style: TextStyle(
                  fontSize: 18, fontFamily: "Roboto", color: AppColors.black),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "\$59.99",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Roboto",
                  color: AppColors.red,
                  decoration: TextDecoration.lineThrough),
            ),
            Spacer(),
            Rating()
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ProductColors(
            productColors: [
              ProductColorModel("White", Colors.white),
              ProductColorModel("Black", Colors.black),
              ProductColorModel("Green", Colors.green)
            ],
            onChange: (index) {
              setState(() {
                _selectedColorIndex = index;
              });
            },
            selectedIndex: _selectedColorIndex),
        const SizedBox(
          height: 20,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
          items: const [DropdownMenuItem(child: Text("Quantity (1)"))],
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: 58,
          child: ElevatedButton.icon(
            label: const Text(
              "ADD TO CART",
              style: TextStyle(
                  fontFamily: "Barlow",
                  letterSpacing: 4.25,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "Free shipping on orders over \$30",
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 12,
                color: AppColors.black,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
            width: double.infinity,
            height: 58,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(color: AppColors.grey, width: 2)),
                  foregroundColor: AppColors.grey),
              onPressed: () {},
              child: const Text(
                "FIND IN STORE",
                style: TextStyle(
                    fontFamily: "Barlow",
                    letterSpacing: 4.25,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            )),
      ]),
    );
  }
}
