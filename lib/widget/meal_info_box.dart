import 'package:flutter/material.dart';
import 'package:bliss_bites/model/meal_model.dart';

class MealInfoBox extends StatelessWidget {
  const MealInfoBox(this.mealData, {super.key});
  final Meal mealData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.black12,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text("complexity"),
                Text(
                  mealData.complexity.name,
                  style: const TextStyle(
                    color: Color.fromARGB(190, 0, 0, 0),
                  ),
                ),
              ],
            ),
            const VerticalDivider(
              color: Colors.black38,
              indent: 5,
              endIndent: 5,
            ),
            Column(
              children: [
                const Text("Duration"),
                Text(
                  "${mealData.duration}",
                  style: const TextStyle(
                    color: Color.fromARGB(190, 0, 0, 0),
                  ),
                ),
              ],
            ),
            const VerticalDivider(
              color: Colors.black38,
              indent: 5,
              endIndent: 5,
            ),
            Column(
              children: [
                const Text("Affordablity"),
                Text(
                  mealData.affordability.name,
                  style: const TextStyle(
                    color: Color.fromARGB(190, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
