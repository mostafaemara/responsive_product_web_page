import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 198,
        height: 34,
        child: TextField(
          cursorColor: AppColors.grey,
          decoration: InputDecoration(
              isDense: true,
              prefixIconColor: AppColors.grey,
              prefixIcon: const Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.grey)),
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide:
                      const BorderSide(width: 1, color: AppColors.grey))),
        ));
  }
}
