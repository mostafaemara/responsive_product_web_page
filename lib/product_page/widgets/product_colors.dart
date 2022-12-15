import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';

class ProductColorModel {
  final String title;
  final Color color;

  ProductColorModel(this.title, this.color);
}

class ProductColors extends StatelessWidget {
  const ProductColors(
      {super.key,
      required this.productColors,
      required this.onChange,
      required this.selectedIndex});
  final List<ProductColorModel> productColors;
  final int selectedIndex;
  final Function(int index) onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
                productColors.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: _ColorItem(
                          onPressed: () {
                            onChange(index);
                          },
                          color: productColors[index].color,
                          isSelected: selectedIndex == index),
                    ))),
        const SizedBox(
          height: 8,
        ),
        Text(productColors[selectedIndex].title,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "Roboto",
              color: AppColors.black,
            )),
      ],
    );
  }
}

class _ColorItem extends StatelessWidget {
  const _ColorItem(
      {required this.color, required this.isSelected, required this.onPressed});
  final Color color;
  final bool isSelected;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 27,
        height: 27,
        decoration: BoxDecoration(
            border: isSelected ? Border.all(color: AppColors.grey) : null,
            borderRadius: BorderRadius.circular(19)),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              color: color,
              borderRadius: BorderRadius.circular(19)),
          width: 19,
          height: 19,
        ),
      ),
    );
  }
}
