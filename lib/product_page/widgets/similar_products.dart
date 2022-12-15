import 'package:flutter/material.dart';

class SimilarProducts extends StatelessWidget {
  const SimilarProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
          5,
          (index) => SizedBox(
                height: 340,
                width: 262,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                          "https://raw.githubusercontent.com/mostafaemara/responsive_product_web_page/master/resources/xbox_charge_kit.png"),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        "Xbox One Play & Charge Kit",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      SizedBox(
                        width: 206,
                        height: 40,
                        child: ElevatedButton(
                          child: const Text(
                            "\$19.99",
                            style: TextStyle(
                                fontFamily: "Barlow",
                                letterSpacing: 4.25,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ]),
              )),
    );
  }
}
