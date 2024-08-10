import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/meal_model.dart';


class FavoriteMealsNotifier extends StateNotifier<List<Meal>>{
  FavoriteMealsNotifier() : super([]);

  bool toggleFavMealStatus(Meal meal){
    final _isContains = state.contains(meal);
    if(_isContains){
      state = state.where((e){
        return e.id!=meal.id;
      }).toList();
      return false;
    }else{
      state = [...state, meal];
      return true;
    }
  }

}
final favoriteMealProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref){
  return FavoriteMealsNotifier();
});