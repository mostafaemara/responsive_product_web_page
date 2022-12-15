import 'package:flutter/material.dart';

import '../../colors.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            5,
            (index) => const Icon(
                  Icons.star,
                  size: 15,
                  color: AppColors.yellow,
                )),
        const Text("(50)"),
        const SizedBox(
          width: 22,
        )
      ],
    );
  }
}
