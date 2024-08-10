import 'package:bliss_bites/provider/favorite_meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/meal_model.dart';

class HeartIcon extends ConsumerStatefulWidget {
  const HeartIcon(this.mealData, {super.key});

  final Meal mealData;

  @override
  ConsumerState<HeartIcon> createState() => _HeartIconState();
}

class _HeartIconState extends ConsumerState<HeartIcon> {
  @override
  Widget build(BuildContext context) {
    // Watch the favorite status of the meal
    final isFavorite = ref.watch(favoriteMealProvider).contains(widget.mealData);

    return IconButton(
      onPressed: () {
        // Toggle the favorite status
        ref.read(favoriteMealProvider.notifier).toggleFavMealStatus(widget.mealData);

        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${widget.mealData.title} removed")));
      },
      icon: AnimatedSwitcher(
        transitionBuilder: (child, animation){
          return RotationTransition(turns: Tween(begin: 0.8, end: 1.0).animate(animation), child: child);
      },
        duration: Duration(milliseconds: 300),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_outline_outlined,
          color: isFavorite ? Colors.red : null,
          key: ValueKey(isFavorite),
        ),
      ),
    );
  }
}
