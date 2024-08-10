import 'package:flutter/material.dart';
import 'package:bliss_bites/model/meal_model.dart';
import 'package:bliss_bites/screen/mealinfo_sceen.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.mealData});
  final Meal mealData;

  void onTap(BuildContext context, Meal mealData) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) {
          return MealInfo(mealData);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context, mealData),
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Hero(
                tag: mealData.id,
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(mealData.imageUrl),
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mealData.title,
                      ),
                      const SizedBox(
                        height: 2.5,
                      ),
                      Text(
                        "${mealData.complexity.name} | ${mealData.affordability.name}",
                        style: const TextStyle(
                          color: Color.fromARGB(162, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.timer_outlined),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("${mealData.duration}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
