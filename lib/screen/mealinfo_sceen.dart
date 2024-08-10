import 'package:flutter/material.dart';
import 'package:bliss_bites/model/meal_model.dart';
import 'package:bliss_bites/widget/meal_info_box.dart';

import '../widget/heart.dart';

class MealInfo extends StatelessWidget {
  const MealInfo(this.mealData, {super.key});


  final Meal mealData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          HeartIcon(mealData),
        ],
        title: Text(
          mealData.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Hero(
              tag: mealData.id,
              child: Image.network(
                mealData.imageUrl,
                height: 265,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 250),
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              color: Color(0xfffef7ff),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      endIndent: 160,
                      indent: 160,
                      color: Colors.grey,
                      height: 30,
                      thickness: 4,
                    ),
                    MealInfoBox(mealData),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Ingredients",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    for (final i in mealData.ingredients) Text("• $i"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Steps",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    for (final i in mealData.steps) Text("• $i"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




