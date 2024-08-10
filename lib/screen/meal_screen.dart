import 'package:flutter/material.dart';
import 'package:bliss_bites/model/meal_model.dart';
import 'package:bliss_bites/widget/meal_item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen(
      {super.key, required this.list, this.title});

  final List<Meal> list;
  final String? title;

  @override
  Widget build(BuildContext context) {
    Widget content = Scaffold(
      appBar: (title == null)
          ? null
          : AppBar(
              title: Text(title!),
            ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (ctx, index) => MealItem(
          mealData: list[index],
        ),
      ),
    );

    if (list.isEmpty) {
      content = Scaffold(
        appBar: (title == null)
            ? null
            : AppBar(
                title: Text(title!),
              ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "No contents Found!!",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
                  color: Colors.black87,
                ),
              ),
              Text(
                "Try another category..",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return content;
  }
}
