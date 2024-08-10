import 'package:flutter/material.dart';
import 'package:bliss_bites/screen/tabs_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: TabsScreen(),
      ), 
    ),
  );
}
