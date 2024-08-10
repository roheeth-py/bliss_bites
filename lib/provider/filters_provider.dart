import 'package:bliss_bites/data/dataset.dart';
import 'package:bliss_bites/provider/meals_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter{
  G,
  L,
  V,
  Vegan,
}

class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier() : super({
    Filter.G: false,
    Filter.V: false,
    Filter.L: false,
    Filter.Vegan: false,
  });

  void setFilters(Map<Filter, bool> filters){
    state = filters;
  }

  void setFilter(Filter filter, bool isActive){
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider = StateNotifierProvider<FilterNotifier, Map<Filter, bool>>(
    (ref){
      return FilterNotifier();
    }
);

final filteredMealProvider = Provider((ref){
  const meals = dummyMeals;
  // final meals = ref.watch(mealsProvider);
  final selectedFilter = ref.watch(filtersProvider);
  return meals.where((e){
    if(!e.isVegan && selectedFilter[Filter.Vegan]!){
      return false;
    }
    if(!e.isGlutenFree && selectedFilter[Filter.G]!){
      return false;
    }
    if(!e.isLactoseFree && selectedFilter[Filter.L]!){
      return false;
    }
    if(!e.isVegetarian && selectedFilter[Filter.V]!){
      return false;
    }
    return true;
  }).toList();
});