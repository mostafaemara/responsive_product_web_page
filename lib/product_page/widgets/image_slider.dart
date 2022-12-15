import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

class ImageSlider extends StatefulWidget {
  final ScreenType screenType;
  final List<String> images;
  const ImageSlider(
      {super.key, required this.images, this.screenType = ScreenType.desktop})
      : assert(images.length >= 1);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (contx, constrains) {
        final imageWidth = constrains.maxWidth - 75;
        return SizedBox(
            child: widget.screenType == ScreenType.desktop
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          children: List.generate(
                              widget.images.length,
                              (index) => _GalleryImageItem(
                                    image: widget.images[index],
                                    isSelected: index == _selectedIndex,
                                    onPressed: () {
                                      _selectImage(index);
                                    },
                                  ))),
                      SizedBox(
                        width: imageWidth < 723 ? imageWidth : 723,
                        height: 453,
                        child: Image.network(
                          widget.images[_selectedIndex],
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              widget.images.length,
                              (index) => _GalleryImageItem(
                                    image: widget.images[index],
                                    isSelected: index == _selectedIndex,
                                    onPressed: () {
                                      _selectImage(index);
                                    },
                                  ))),
                      SizedBox(
                        width: imageWidth < 723 ? imageWidth : 723,
                        height: 453,
                        child: Image.network(
                          widget.images[_selectedIndex],
                        ),
                      ),
                    ].reversed.toList(),
                  ));
      },
    );
  }

  void _selectImage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class _GalleryImageItem extends StatelessWidget {
  const _GalleryImageItem(
      {required this.image, required this.isSelected, required this.onPressed});
  final String image;
  final bool isSelected;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              border: isSelected
                  ? Border.all(color: AppColors.grey, width: 2)
                  : null),
          width: 75,
          height: 75,
          child: Image.network(
            image,
          ),
        ),
      ),
    );
  }
}
