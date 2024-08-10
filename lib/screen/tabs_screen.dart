import 'package:bliss_bites/provider/favorite_meal_provider.dart';
import 'package:bliss_bites/provider/filters_provider.dart';
import 'package:bliss_bites/provider/meals_provider.dart';
import 'package:bliss_bites/screen/filter_page.dart';
import 'package:bliss_bites/screen/meal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bliss_bites/screen/category_screen.dart';
import 'package:bliss_bites/widget/main_drawer.dart';
import '../data/dataset.dart';
import '../model/meal_model.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}


class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedIndex = 0;
  List<Meal> favList = [];

  void favFunc(Meal meal) {
    bool _isContain = favList.contains(meal);
    if (_isContain) {
      setState(() {
        favList.remove(meal);
      });
    }else {
      favList.add(meal);
    }
  }

  Future<void> onTap(String identifier) async {
    if (identifier == "Filter") {
      Navigator.pop(context);
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) {
            return FilterPage();
          },
        ),
      );
    }else{
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final meals = ref.watch(mealsProvider);
    // final selectedFilter = ref.watch(filtersProvider);
    final availableMeal = ref.watch(filteredMealProvider);

    String activeTitle = "Bliss Bites";
    Widget currentScreen = CategoryScreen(availableMeal);
    if (_selectedIndex != 0) {
      final favList = ref.watch(favoriteMealProvider);
      activeTitle = "Favorites";
      currentScreen = MealScreen(list: favList);
    }

    return Scaffold(
      drawer: MainDrawer(onTap),
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.topCenter,
          child: Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(
                  Icons.apps_rounded,
                  color: Color(0xFF404040),
                ),
              ),
            );
          }),
        ),
        title: (_selectedIndex == 0)
            ? Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Text(
                  activeTitle,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: GoogleFonts.mrsSaintDelafield().fontFamily,
                    fontSize: 32,
                  ),
                ),
              )
            : Text(activeTitle),
        centerTitle: (_selectedIndex == 0) ? true : false,
      ),
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
        ],
      ),
    );
  }
}
