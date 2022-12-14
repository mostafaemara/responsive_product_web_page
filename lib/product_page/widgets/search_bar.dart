import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(primary: AppColors.grey)),
      child: TextField(
        cursorColor: AppColors.grey,
        decoration: InputDecoration(
            isDense: true,
            hintText: "I’m looking for…",
            hintStyle: const TextStyle(
                fontSize: 16, color: AppColors.grey, fontFamily: "Roboto"),
            prefixIcon: const Icon(Icons.search),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(width: 1, color: AppColors.grey)),
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(width: 1, color: AppColors.grey))),
      ),
    );
  }
}
