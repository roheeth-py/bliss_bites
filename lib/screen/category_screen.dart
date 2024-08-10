import 'package:flutter/material.dart';
import 'package:bliss_bites/data/dataset.dart';
import 'package:bliss_bites/model/category_model.dart';
import 'package:bliss_bites/model/meal_model.dart';
import 'package:bliss_bites/screen/meal_screen.dart';
import 'package:bliss_bites/widget/category_item.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen(this.availableMeal, {super.key});

  final List<Meal> availableMeal;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    super.initState();

    _animationController.forward();
  }

  void _selectedCategory(BuildContext context, Category category) {
    List<Meal> filteredList = widget.availableMeal.where((e) {
      return e.categories.contains(category.id);
    }).toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return MealScreen(
            list: filteredList,
            title: category.title,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(0, 0.3),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              parent: _animationController,
              curve: Curves.bounceInOut,
            ),
          ),
          child: Padding(
            padding:
                EdgeInsets.only(top: 100 - _animationController.value * 100),
            child: child,
          ),
        );
      },
      child: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: availableCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
        ),
        itemBuilder: (ctx, index) {
          return CategoryItem(
            onTap: _selectedCategory,
            categoryElement: availableCategories[index],
          );
        },
      ),
    );
  }
}
