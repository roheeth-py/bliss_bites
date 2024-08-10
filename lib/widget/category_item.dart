import 'package:flutter/material.dart';
import 'package:bliss_bites/model/category_model.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {required this.categoryElement, super.key, required this.onTap});
  final void Function(BuildContext context, Category category) onTap;
  final Category categoryElement;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context, categoryElement),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(categoryElement.imageUrl),
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(171, 0, 0, 0),
                    ],
                  ),
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "\t\t${categoryElement.title}",
                  style: const TextStyle(
                      color: Color.fromARGB(230, 255, 255, 255)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
