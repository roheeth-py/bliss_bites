import 'package:bliss_bites/data/dataset.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealsProvider = Provider((ref){
  return dummyMeals;
});